///
/// Auto-generated by Stone, do not modify.
///

#import "DbxAsyncLaunchResultBase.h"
#import "DbxFilesFileMetadata.h"
#import "DbxFilesSaveUrlResult.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesSaveUrlResult 

- (instancetype)initWithAsyncJobId:(NSString *)asyncJobId {
    self = [super init];
    if (self != nil) {
        _tag = FilesSaveUrlResultAsyncJobId;
        _asyncJobId = asyncJobId;
    }
    return self;
}

- (instancetype)initWithComplete:(DbxFilesFileMetadata *)complete {
    self = [super init];
    if (self != nil) {
        _tag = FilesSaveUrlResultComplete;
        _complete = complete;
    }
    return self;
}

- (BOOL)isAsyncJobId {
    return _tag == FilesSaveUrlResultAsyncJobId;
}

- (BOOL)isComplete {
    return _tag == FilesSaveUrlResultComplete;
}

- (NSString *)getTagName {
    switch (_tag) {
        case FilesSaveUrlResultAsyncJobId:
           return @"FilesSaveUrlResultAsyncJobId";
        case FilesSaveUrlResultComplete:
           return @"FilesSaveUrlResultComplete";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (NSString *)asyncJobId {
    if (_tag != FilesSaveUrlResultAsyncJobId) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required FilesSaveUrlResultAsyncJobId, but was %@.", [self getTagName]];
    }
    return _asyncJobId;
}

- (DbxFilesFileMetadata *)complete {
    if (_tag != FilesSaveUrlResultComplete) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required FilesSaveUrlResultComplete, but was %@.", [self getTagName]];
    }
    return _complete;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesSaveUrlResultSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesSaveUrlResultSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesSaveUrlResultSerializer serialize:self] description];
}

@end


@implementation DbxFilesSaveUrlResultSerializer 

+ (NSDictionary *)serialize:(DbxFilesSaveUrlResult *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isAsyncJobId]) {
        jsonDict[@"async_job_id"] = valueObj.asyncJobId;
        jsonDict[@".tag"] = @"async_job_id";
    }
    else if ([valueObj isComplete]) {
        jsonDict = [[DbxFilesFileMetadataSerializer serialize:valueObj.complete] mutableCopy];
        jsonDict[@".tag"] = @"complete";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxFilesSaveUrlResult *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"async_job_id"]) {
        NSString *asyncJobId = valueDict[@"async_job_id"];
        return [[DbxFilesSaveUrlResult alloc] initWithAsyncJobId:asyncJobId];
    }
    if ([tag isEqualToString:@"complete"]) {
        DbxFilesFileMetadata *complete = [DbxFilesFileMetadataSerializer deserialize:valueDict];
        return [[DbxFilesSaveUrlResult alloc] initWithComplete:complete];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end