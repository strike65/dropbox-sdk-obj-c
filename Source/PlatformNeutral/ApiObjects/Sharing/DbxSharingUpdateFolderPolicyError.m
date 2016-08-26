///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingSharedFolderAccessError.h"
#import "DbxSharingUpdateFolderPolicyError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingUpdateFolderPolicyError 

- (instancetype)initWithAccessError:(DbxSharingSharedFolderAccessError *)accessError {
    self = [super init];
    if (self != nil) {
        _tag = SharingUpdateFolderPolicyErrorAccessError;
        _accessError = accessError;
    }
    return self;
}

- (instancetype)initWithNotOnTeam {
    self = [super init];
    if (self != nil) {
        _tag = SharingUpdateFolderPolicyErrorNotOnTeam;
    }
    return self;
}

- (instancetype)initWithTeamPolicyDisallowsMemberPolicy {
    self = [super init];
    if (self != nil) {
        _tag = SharingUpdateFolderPolicyErrorTeamPolicyDisallowsMemberPolicy;
    }
    return self;
}

- (instancetype)initWithDisallowedSharedLinkPolicy {
    self = [super init];
    if (self != nil) {
        _tag = SharingUpdateFolderPolicyErrorDisallowedSharedLinkPolicy;
    }
    return self;
}

- (instancetype)initWithNoPermission {
    self = [super init];
    if (self != nil) {
        _tag = SharingUpdateFolderPolicyErrorNoPermission;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = SharingUpdateFolderPolicyErrorOther;
    }
    return self;
}

- (BOOL)isAccessError {
    return _tag == SharingUpdateFolderPolicyErrorAccessError;
}

- (BOOL)isNotOnTeam {
    return _tag == SharingUpdateFolderPolicyErrorNotOnTeam;
}

- (BOOL)isTeamPolicyDisallowsMemberPolicy {
    return _tag == SharingUpdateFolderPolicyErrorTeamPolicyDisallowsMemberPolicy;
}

- (BOOL)isDisallowedSharedLinkPolicy {
    return _tag == SharingUpdateFolderPolicyErrorDisallowedSharedLinkPolicy;
}

- (BOOL)isNoPermission {
    return _tag == SharingUpdateFolderPolicyErrorNoPermission;
}

- (BOOL)isOther {
    return _tag == SharingUpdateFolderPolicyErrorOther;
}

- (NSString *)getTagName {
    switch (_tag) {
        case SharingUpdateFolderPolicyErrorAccessError:
           return @"SharingUpdateFolderPolicyErrorAccessError";
        case SharingUpdateFolderPolicyErrorNotOnTeam:
           return @"SharingUpdateFolderPolicyErrorNotOnTeam";
        case SharingUpdateFolderPolicyErrorTeamPolicyDisallowsMemberPolicy:
           return @"SharingUpdateFolderPolicyErrorTeamPolicyDisallowsMemberPolicy";
        case SharingUpdateFolderPolicyErrorDisallowedSharedLinkPolicy:
           return @"SharingUpdateFolderPolicyErrorDisallowedSharedLinkPolicy";
        case SharingUpdateFolderPolicyErrorNoPermission:
           return @"SharingUpdateFolderPolicyErrorNoPermission";
        case SharingUpdateFolderPolicyErrorOther:
           return @"SharingUpdateFolderPolicyErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (DbxSharingSharedFolderAccessError *)accessError {
    if (_tag != SharingUpdateFolderPolicyErrorAccessError) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required SharingUpdateFolderPolicyErrorAccessError, but was %@.", [self getTagName]];
    }
    return _accessError;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingUpdateFolderPolicyErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingUpdateFolderPolicyErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingUpdateFolderPolicyErrorSerializer serialize:self] description];
}

@end


@implementation DbxSharingUpdateFolderPolicyErrorSerializer 

+ (NSDictionary *)serialize:(DbxSharingUpdateFolderPolicyError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isAccessError]) {
        jsonDict = [[DbxSharingSharedFolderAccessErrorSerializer serialize:valueObj.accessError] mutableCopy];
        jsonDict[@".tag"] = @"access_error";
    }
    else if ([valueObj isNotOnTeam]) {
        jsonDict[@".tag"] = @"not_on_team";
    }
    else if ([valueObj isTeamPolicyDisallowsMemberPolicy]) {
        jsonDict[@".tag"] = @"team_policy_disallows_member_policy";
    }
    else if ([valueObj isDisallowedSharedLinkPolicy]) {
        jsonDict[@".tag"] = @"disallowed_shared_link_policy";
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

+ (DbxSharingUpdateFolderPolicyError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"access_error"]) {
        DbxSharingSharedFolderAccessError *accessError = [DbxSharingSharedFolderAccessErrorSerializer deserialize:valueDict[@"access_error"]];
        return [[DbxSharingUpdateFolderPolicyError alloc] initWithAccessError:accessError];
    }
    if ([tag isEqualToString:@"not_on_team"]) {
        return [[DbxSharingUpdateFolderPolicyError alloc] initWithNotOnTeam];
    }
    if ([tag isEqualToString:@"team_policy_disallows_member_policy"]) {
        return [[DbxSharingUpdateFolderPolicyError alloc] initWithTeamPolicyDisallowsMemberPolicy];
    }
    if ([tag isEqualToString:@"disallowed_shared_link_policy"]) {
        return [[DbxSharingUpdateFolderPolicyError alloc] initWithDisallowedSharedLinkPolicy];
    }
    if ([tag isEqualToString:@"no_permission"]) {
        return [[DbxSharingUpdateFolderPolicyError alloc] initWithNoPermission];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxSharingUpdateFolderPolicyError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end