///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///

#import "DBAUTHAuthError.h"
#import "DBAuthRateLimitError.h"
#import "DBDelegate.h"
#import "DBRequestErrors.h"
#import "DBStoneBase.h"
#import "DBTasks.h"
#import "DBTransportClient.h"

static NSString const *const kBackgroundSessionId = @"com.dropbox.dropbox_sdk_obj_c_background";

@interface DBTransportClient (Private)

- (NSDictionary *)headersWithRouteInfo:(NSDictionary<NSString *, NSString *> *)routeAttributes
                           accessToken:(NSString *)accessToken
                         serializedArg:(NSString *)serializedArg;
+ (NSURLRequest *)requestWithHeaders:(NSDictionary *)httpHeaders
                                 url:(NSURL *)url
                             content:(NSData *)content
                              stream:(NSInputStream *)stream;
+ (NSURL *)urlWithRoute:(DBRoute *)route;
+ (NSData *)serializeArgData:(DBRoute *)route routeArg:(id<DBSerializable>)arg;
+ (NSString *)serializeArgString:(DBRoute *)route routeArg:(id<DBSerializable>)arg;

@end

@implementation DBTransportClient

@synthesize backgroundSession = _backgroundSession;

#pragma mark - Constructors

- (instancetype)initWithAccessToken:(NSString *)accessToken {
  return [self initWithAccessToken:accessToken selectUser:nil];
}

- (instancetype)initWithAccessToken:(NSString *)accessToken selectUser:(NSString *)selectUser {
  return [self initWithAccessToken:accessToken
                        selectUser:selectUser
                         userAgent:nil
                     delegateQueue:nil
                            appKey:nil
                         appSecret:nil];
}

- (instancetype)initWithAccessToken:(NSString *)accessToken
                         selectUser:(NSString *)selectUser
                          userAgent:(NSString *)userAgent
                      delegateQueue:(NSOperationQueue *)delegateQueue
                             appKey:(NSString *)appKey
                          appSecret:(NSString *)appSecret {
  self = [super init:selectUser userAgent:userAgent appKey:appKey appSecret:appSecret];
  if (self) {
    _accessToken = accessToken;
    _delegateQueue = delegateQueue ?: [NSOperationQueue mainQueue];
    _delegate = [[DBDelegate alloc] initWithQueue:_delegateQueue];

    NSURLSessionConfiguration *sessionConfig = [NSURLSessionConfiguration defaultSessionConfiguration];
    sessionConfig.timeoutIntervalForRequest = 100.0;

    _session = [NSURLSession sessionWithConfiguration:sessionConfig delegate:_delegate delegateQueue:_delegateQueue];
    NSString *backgroundId = [NSString stringWithFormat:@"%@.%@", kBackgroundSessionId, [NSUUID UUID].UUIDString];
    NSURLSessionConfiguration *backgroundSessionConfig =
        [NSURLSessionConfiguration backgroundSessionConfigurationWithIdentifier:backgroundId];
    backgroundSessionConfig.timeoutIntervalForRequest = 100.0;
    _backgroundSession =
        [NSURLSession sessionWithConfiguration:backgroundSessionConfig delegate:_delegate delegateQueue:_delegateQueue];
  }
  return self;
}

#pragma mark - RPC-style request

- (DBRpcTask *)requestRpc:(DBRoute *)route arg:(id<DBSerializable>)arg {
  NSURL *requestUrl = [[self class] urlWithRoute:route];
  NSString *serializedArg = [[self class] serializeArgString:route routeArg:arg];
  NSDictionary *headers = [self headersWithRouteInfo:route.attrs accessToken:_accessToken serializedArg:serializedArg];

  // RPC request submits argument in request body
  NSData *serializedArgData = [[self class] serializeArgData:route routeArg:arg];

  NSURLRequest *request = [[self class] requestWithHeaders:headers url:requestUrl content:serializedArgData stream:nil];

  NSURLSessionDataTask *task = [_session dataTaskWithRequest:request];
  DBRpcTask *rpcTask = [[DBRpcTask alloc] initWithTask:task session:_session delegate:_delegate route:route];
  [task resume];

  return rpcTask;
}

#pragma mark - Upload-style request (NSURL)

- (DBUploadTask *)requestUpload:(DBRoute *)route arg:(id<DBSerializable>)arg inputUrl:(NSURL *)input {
  NSURL *requestUrl = [[self class] urlWithRoute:route];
  NSString *serializedArg = [[self class] serializeArgString:route routeArg:arg];
  NSDictionary *headers = [self headersWithRouteInfo:route.attrs accessToken:_accessToken serializedArg:serializedArg];

  NSURLRequest *request = [[self class] requestWithHeaders:headers url:requestUrl content:nil stream:nil];

  NSURLSessionUploadTask *task = [_backgroundSession uploadTaskWithRequest:request fromFile:input];
  DBUploadTask *uploadTask =
      [[DBUploadTask alloc] initWithTask:task session:_backgroundSession delegate:_delegate route:route];
  [task resume];

  return uploadTask;
}

#pragma mark - Upload-style request (NSData)

- (DBUploadTask *)requestUpload:(DBRoute *)route arg:(id<DBSerializable>)arg inputData:(NSData *)input {
  NSURL *requestUrl = [[self class] urlWithRoute:route];
  NSString *serializedArg = [[self class] serializeArgString:route routeArg:arg];
  NSDictionary *headers = [self headersWithRouteInfo:route.attrs accessToken:_accessToken serializedArg:serializedArg];

  NSURLRequest *request = [[self class] requestWithHeaders:headers url:requestUrl content:nil stream:nil];

  NSURLSessionUploadTask *task = [_session uploadTaskWithRequest:request fromData:input];
  DBUploadTask *uploadTask = [[DBUploadTask alloc] initWithTask:task session:_session delegate:_delegate route:route];
  [task resume];

  return uploadTask;
}

#pragma mark - Upload-style request (NSInputStream)

- (DBUploadTask *)requestUpload:(DBRoute *)route arg:(id<DBSerializable>)arg inputStream:(NSInputStream *)input {
  NSURL *requestUrl = [[self class] urlWithRoute:route];
  NSString *serializedArg = [[self class] serializeArgString:route routeArg:arg];
  NSDictionary *headers = [self headersWithRouteInfo:route.attrs accessToken:_accessToken serializedArg:serializedArg];

  NSURLRequest *request = [[self class] requestWithHeaders:headers url:requestUrl content:nil stream:input];

  NSURLSessionUploadTask *task = [_session uploadTaskWithStreamedRequest:request];
  DBUploadTask *uploadTask = [[DBUploadTask alloc] initWithTask:task session:_session delegate:_delegate route:route];
  [task resume];

  return uploadTask;
}

#pragma mark - Download-style request (NSURL)

- (DBDownloadUrlTask *)requestDownload:(DBRoute *)route
                                   arg:(id<DBSerializable>)arg
                             overwrite:(BOOL)overwrite
                           destination:(NSURL *)destination {
  NSURL *requestUrl = [[self class] urlWithRoute:route];
  NSString *serializedArg = [[self class] serializeArgString:route routeArg:arg];
  NSDictionary *headers = [self headersWithRouteInfo:route.attrs accessToken:_accessToken serializedArg:serializedArg];

  NSURLRequest *request = [[self class] requestWithHeaders:headers url:requestUrl content:nil stream:nil];

  NSURLSessionDownloadTask *task = [_backgroundSession downloadTaskWithRequest:request];
  DBDownloadUrlTask *downloadTask = [[DBDownloadUrlTask alloc] initWithTask:task
                                                                    session:_backgroundSession
                                                                   delegate:_delegate
                                                                      route:route
                                                                  overwrite:overwrite
                                                                destination:destination];
  [task resume];

  return downloadTask;
}

#pragma mark - Download-style request (NSData)

- (DBDownloadDataTask *)requestDownload:(DBRoute *)route arg:(id<DBSerializable>)arg {
  NSURL *requestUrl = [[self class] urlWithRoute:route];
  NSString *serializedArg = [[self class] serializeArgString:route routeArg:arg];
  NSDictionary *headers = [self headersWithRouteInfo:route.attrs accessToken:_accessToken serializedArg:serializedArg];

  NSURLRequest *request = [[self class] requestWithHeaders:headers url:requestUrl content:nil stream:nil];

  NSURLSessionDownloadTask *task = [_backgroundSession downloadTaskWithRequest:request];
  DBDownloadDataTask *downloadTask =
      [[DBDownloadDataTask alloc] initWithTask:task session:_backgroundSession delegate:_delegate route:route];
  [task resume];

  return downloadTask;
}

#pragma mark - Session accessors and mutators

- (NSURLSession *)session {
  @synchronized(self) {
    return _session;
  }
}

- (void)session:(NSURLSession *)session {
  @synchronized(self) {
    _session = session;
  }
}

- (NSURLSession *)backgroundSession {
  @synchronized(self) {
    return _backgroundSession;
  }
}

- (void)setBackgroundSession:(NSURLSession *)backgroundSession {
  @synchronized(self) {
    _backgroundSession = backgroundSession;
  }
}

@end
