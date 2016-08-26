///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamDeviceSessionArg.h"
#import "DbxTeamRevokeDesktopClientArg.h"
#import "DbxTeamRevokeDeviceSessionArg.h"

@implementation DbxTeamRevokeDeviceSessionArg 

- (instancetype)initWithWebSession:(DbxTeamDeviceSessionArg *)webSession {
    self = [super init];
    if (self != nil) {
        _tag = TeamRevokeDeviceSessionArgWebSession;
        _webSession = webSession;
    }
    return self;
}

- (instancetype)initWithDesktopClient:(DbxTeamRevokeDesktopClientArg *)desktopClient {
    self = [super init];
    if (self != nil) {
        _tag = TeamRevokeDeviceSessionArgDesktopClient;
        _desktopClient = desktopClient;
    }
    return self;
}

- (instancetype)initWithMobileClient:(DbxTeamDeviceSessionArg *)mobileClient {
    self = [super init];
    if (self != nil) {
        _tag = TeamRevokeDeviceSessionArgMobileClient;
        _mobileClient = mobileClient;
    }
    return self;
}

- (BOOL)isWebSession {
    return _tag == TeamRevokeDeviceSessionArgWebSession;
}

- (BOOL)isDesktopClient {
    return _tag == TeamRevokeDeviceSessionArgDesktopClient;
}

- (BOOL)isMobileClient {
    return _tag == TeamRevokeDeviceSessionArgMobileClient;
}

- (NSString *)getTagName {
    switch (_tag) {
        case TeamRevokeDeviceSessionArgWebSession:
           return @"TeamRevokeDeviceSessionArgWebSession";
        case TeamRevokeDeviceSessionArgDesktopClient:
           return @"TeamRevokeDeviceSessionArgDesktopClient";
        case TeamRevokeDeviceSessionArgMobileClient:
           return @"TeamRevokeDeviceSessionArgMobileClient";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (DbxTeamDeviceSessionArg *)webSession {
    if (_tag != TeamRevokeDeviceSessionArgWebSession) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required TeamRevokeDeviceSessionArgWebSession, but was %@.", [self getTagName]];
    }
    return _webSession;
}

- (DbxTeamRevokeDesktopClientArg *)desktopClient {
    if (_tag != TeamRevokeDeviceSessionArgDesktopClient) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required TeamRevokeDeviceSessionArgDesktopClient, but was %@.", [self getTagName]];
    }
    return _desktopClient;
}

- (DbxTeamDeviceSessionArg *)mobileClient {
    if (_tag != TeamRevokeDeviceSessionArgMobileClient) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required TeamRevokeDeviceSessionArgMobileClient, but was %@.", [self getTagName]];
    }
    return _mobileClient;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamRevokeDeviceSessionArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamRevokeDeviceSessionArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamRevokeDeviceSessionArgSerializer serialize:self] description];
}

@end


@implementation DbxTeamRevokeDeviceSessionArgSerializer 

+ (NSDictionary *)serialize:(DbxTeamRevokeDeviceSessionArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isWebSession]) {
        jsonDict = [[DbxTeamDeviceSessionArgSerializer serialize:valueObj.webSession] mutableCopy];
        jsonDict[@".tag"] = @"web_session";
    }
    else if ([valueObj isDesktopClient]) {
        jsonDict = [[DbxTeamRevokeDesktopClientArgSerializer serialize:valueObj.desktopClient] mutableCopy];
        jsonDict[@".tag"] = @"desktop_client";
    }
    else if ([valueObj isMobileClient]) {
        jsonDict = [[DbxTeamDeviceSessionArgSerializer serialize:valueObj.mobileClient] mutableCopy];
        jsonDict[@".tag"] = @"mobile_client";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxTeamRevokeDeviceSessionArg *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"web_session"]) {
        DbxTeamDeviceSessionArg *webSession = [DbxTeamDeviceSessionArgSerializer deserialize:valueDict];
        return [[DbxTeamRevokeDeviceSessionArg alloc] initWithWebSession:webSession];
    }
    if ([tag isEqualToString:@"desktop_client"]) {
        DbxTeamRevokeDesktopClientArg *desktopClient = [DbxTeamRevokeDesktopClientArgSerializer deserialize:valueDict];
        return [[DbxTeamRevokeDeviceSessionArg alloc] initWithDesktopClient:desktopClient];
    }
    if ([tag isEqualToString:@"mobile_client"]) {
        DbxTeamDeviceSessionArg *mobileClient = [DbxTeamDeviceSessionArgSerializer deserialize:valueDict];
        return [[DbxTeamRevokeDeviceSessionArg alloc] initWithMobileClient:mobileClient];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end