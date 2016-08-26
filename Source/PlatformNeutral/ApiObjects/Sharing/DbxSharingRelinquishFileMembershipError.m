///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingRelinquishFileMembershipError.h"
#import "DbxSharingSharingFileAccessError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingRelinquishFileMembershipError 

- (instancetype)initWithAccessError:(DbxSharingSharingFileAccessError *)accessError {
    self = [super init];
    if (self != nil) {
        _tag = SharingRelinquishFileMembershipErrorAccessError;
        _accessError = accessError;
    }
    return self;
}

- (instancetype)initWithGroupAccess {
    self = [super init];
    if (self != nil) {
        _tag = SharingRelinquishFileMembershipErrorGroupAccess;
    }
    return self;
}

- (instancetype)initWithNoPermission {
    self = [super init];
    if (self != nil) {
        _tag = SharingRelinquishFileMembershipErrorNoPermission;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = SharingRelinquishFileMembershipErrorOther;
    }
    return self;
}

- (BOOL)isAccessError {
    return _tag == SharingRelinquishFileMembershipErrorAccessError;
}

- (BOOL)isGroupAccess {
    return _tag == SharingRelinquishFileMembershipErrorGroupAccess;
}

- (BOOL)isNoPermission {
    return _tag == SharingRelinquishFileMembershipErrorNoPermission;
}

- (BOOL)isOther {
    return _tag == SharingRelinquishFileMembershipErrorOther;
}

- (NSString *)getTagName {
    switch (_tag) {
        case SharingRelinquishFileMembershipErrorAccessError:
           return @"SharingRelinquishFileMembershipErrorAccessError";
        case SharingRelinquishFileMembershipErrorGroupAccess:
           return @"SharingRelinquishFileMembershipErrorGroupAccess";
        case SharingRelinquishFileMembershipErrorNoPermission:
           return @"SharingRelinquishFileMembershipErrorNoPermission";
        case SharingRelinquishFileMembershipErrorOther:
           return @"SharingRelinquishFileMembershipErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (DbxSharingSharingFileAccessError *)accessError {
    if (_tag != SharingRelinquishFileMembershipErrorAccessError) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required SharingRelinquishFileMembershipErrorAccessError, but was %@.", [self getTagName]];
    }
    return _accessError;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingRelinquishFileMembershipErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingRelinquishFileMembershipErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingRelinquishFileMembershipErrorSerializer serialize:self] description];
}

@end


@implementation DbxSharingRelinquishFileMembershipErrorSerializer 

+ (NSDictionary *)serialize:(DbxSharingRelinquishFileMembershipError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isAccessError]) {
        jsonDict = [[DbxSharingSharingFileAccessErrorSerializer serialize:valueObj.accessError] mutableCopy];
        jsonDict[@".tag"] = @"access_error";
    }
    else if ([valueObj isGroupAccess]) {
        jsonDict[@".tag"] = @"group_access";
    }
    else if ([valueObj isNoPermission]) {
        jsonDict[@".tag"] = @"no_permission";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxSharingRelinquishFileMembershipError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"access_error"]) {
        DbxSharingSharingFileAccessError *accessError = [DbxSharingSharingFileAccessErrorSerializer deserialize:valueDict[@"access_error"]];
        return [[DbxSharingRelinquishFileMembershipError alloc] initWithAccessError:accessError];
    }
    if ([tag isEqualToString:@"group_access"]) {
        return [[DbxSharingRelinquishFileMembershipError alloc] initWithGroupAccess];
    }
    if ([tag isEqualToString:@"no_permission"]) {
        return [[DbxSharingRelinquishFileMembershipError alloc] initWithNoPermission];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxSharingRelinquishFileMembershipError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end