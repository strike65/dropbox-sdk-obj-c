///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingAddFolderMemberError.h"
#import "DbxSharingAddMemberSelectorError.h"
#import "DbxSharingSharedFolderAccessError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingAddFolderMemberError 

- (instancetype)initWithAccessError:(DbxSharingSharedFolderAccessError *)accessError {
    self = [super init];
    if (self != nil) {
        _tag = SharingAddFolderMemberErrorAccessError;
        _accessError = accessError;
    }
    return self;
}

- (instancetype)initWithEmailUnverified {
    self = [super init];
    if (self != nil) {
        _tag = SharingAddFolderMemberErrorEmailUnverified;
    }
    return self;
}

- (instancetype)initWithBadMember:(DbxSharingAddMemberSelectorError *)badMember {
    self = [super init];
    if (self != nil) {
        _tag = SharingAddFolderMemberErrorBadMember;
        _badMember = badMember;
    }
    return self;
}

- (instancetype)initWithCantShareOutsideTeam {
    self = [super init];
    if (self != nil) {
        _tag = SharingAddFolderMemberErrorCantShareOutsideTeam;
    }
    return self;
}

- (instancetype)initWithTooManyMembers:(NSNumber *)tooManyMembers {
    self = [super init];
    if (self != nil) {
        _tag = SharingAddFolderMemberErrorTooManyMembers;
        _tooManyMembers = tooManyMembers;
    }
    return self;
}

- (instancetype)initWithTooManyPendingInvites:(NSNumber *)tooManyPendingInvites {
    self = [super init];
    if (self != nil) {
        _tag = SharingAddFolderMemberErrorTooManyPendingInvites;
        _tooManyPendingInvites = tooManyPendingInvites;
    }
    return self;
}

- (instancetype)initWithRateLimit {
    self = [super init];
    if (self != nil) {
        _tag = SharingAddFolderMemberErrorRateLimit;
    }
    return self;
}

- (instancetype)initWithTooManyInvitees {
    self = [super init];
    if (self != nil) {
        _tag = SharingAddFolderMemberErrorTooManyInvitees;
    }
    return self;
}

- (instancetype)initWithInsufficientPlan {
    self = [super init];
    if (self != nil) {
        _tag = SharingAddFolderMemberErrorInsufficientPlan;
    }
    return self;
}

- (instancetype)initWithTeamFolder {
    self = [super init];
    if (self != nil) {
        _tag = SharingAddFolderMemberErrorTeamFolder;
    }
    return self;
}

- (instancetype)initWithNoPermission {
    self = [super init];
    if (self != nil) {
        _tag = SharingAddFolderMemberErrorNoPermission;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = SharingAddFolderMemberErrorOther;
    }
    return self;
}

- (BOOL)isAccessError {
    return _tag == SharingAddFolderMemberErrorAccessError;
}

- (BOOL)isEmailUnverified {
    return _tag == SharingAddFolderMemberErrorEmailUnverified;
}

- (BOOL)isBadMember {
    return _tag == SharingAddFolderMemberErrorBadMember;
}

- (BOOL)isCantShareOutsideTeam {
    return _tag == SharingAddFolderMemberErrorCantShareOutsideTeam;
}

- (BOOL)isTooManyMembers {
    return _tag == SharingAddFolderMemberErrorTooManyMembers;
}

- (BOOL)isTooManyPendingInvites {
    return _tag == SharingAddFolderMemberErrorTooManyPendingInvites;
}

- (BOOL)isRateLimit {
    return _tag == SharingAddFolderMemberErrorRateLimit;
}

- (BOOL)isTooManyInvitees {
    return _tag == SharingAddFolderMemberErrorTooManyInvitees;
}

- (BOOL)isInsufficientPlan {
    return _tag == SharingAddFolderMemberErrorInsufficientPlan;
}

- (BOOL)isTeamFolder {
    return _tag == SharingAddFolderMemberErrorTeamFolder;
}

- (BOOL)isNoPermission {
    return _tag == SharingAddFolderMemberErrorNoPermission;
}

- (BOOL)isOther {
    return _tag == SharingAddFolderMemberErrorOther;
}

- (NSString *)getTagName {
    switch (_tag) {
        case SharingAddFolderMemberErrorAccessError:
           return @"SharingAddFolderMemberErrorAccessError";
        case SharingAddFolderMemberErrorEmailUnverified:
           return @"SharingAddFolderMemberErrorEmailUnverified";
        case SharingAddFolderMemberErrorBadMember:
           return @"SharingAddFolderMemberErrorBadMember";
        case SharingAddFolderMemberErrorCantShareOutsideTeam:
           return @"SharingAddFolderMemberErrorCantShareOutsideTeam";
        case SharingAddFolderMemberErrorTooManyMembers:
           return @"SharingAddFolderMemberErrorTooManyMembers";
        case SharingAddFolderMemberErrorTooManyPendingInvites:
           return @"SharingAddFolderMemberErrorTooManyPendingInvites";
        case SharingAddFolderMemberErrorRateLimit:
           return @"SharingAddFolderMemberErrorRateLimit";
        case SharingAddFolderMemberErrorTooManyInvitees:
           return @"SharingAddFolderMemberErrorTooManyInvitees";
        case SharingAddFolderMemberErrorInsufficientPlan:
           return @"SharingAddFolderMemberErrorInsufficientPlan";
        case SharingAddFolderMemberErrorTeamFolder:
           return @"SharingAddFolderMemberErrorTeamFolder";
        case SharingAddFolderMemberErrorNoPermission:
           return @"SharingAddFolderMemberErrorNoPermission";
        case SharingAddFolderMemberErrorOther:
           return @"SharingAddFolderMemberErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (DbxSharingSharedFolderAccessError *)accessError {
    if (_tag != SharingAddFolderMemberErrorAccessError) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required SharingAddFolderMemberErrorAccessError, but was %@.", [self getTagName]];
    }
    return _accessError;
}

- (DbxSharingAddMemberSelectorError *)badMember {
    if (_tag != SharingAddFolderMemberErrorBadMember) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required SharingAddFolderMemberErrorBadMember, but was %@.", [self getTagName]];
    }
    return _badMember;
}

- (NSNumber *)tooManyMembers {
    if (_tag != SharingAddFolderMemberErrorTooManyMembers) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required SharingAddFolderMemberErrorTooManyMembers, but was %@.", [self getTagName]];
    }
    return _tooManyMembers;
}

- (NSNumber *)tooManyPendingInvites {
    if (_tag != SharingAddFolderMemberErrorTooManyPendingInvites) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required SharingAddFolderMemberErrorTooManyPendingInvites, but was %@.", [self getTagName]];
    }
    return _tooManyPendingInvites;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingAddFolderMemberErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingAddFolderMemberErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingAddFolderMemberErrorSerializer serialize:self] description];
}

@end


@implementation DbxSharingAddFolderMemberErrorSerializer 

+ (NSDictionary *)serialize:(DbxSharingAddFolderMemberError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isAccessError]) {
        jsonDict = [[DbxSharingSharedFolderAccessErrorSerializer serialize:valueObj.accessError] mutableCopy];
        jsonDict[@".tag"] = @"access_error";
    }
    else if ([valueObj isEmailUnverified]) {
        jsonDict[@".tag"] = @"email_unverified";
    }
    else if ([valueObj isBadMember]) {
        jsonDict = [[DbxSharingAddMemberSelectorErrorSerializer serialize:valueObj.badMember] mutableCopy];
        jsonDict[@".tag"] = @"bad_member";
    }
    else if ([valueObj isCantShareOutsideTeam]) {
        jsonDict[@".tag"] = @"cant_share_outside_team";
    }
    else if ([valueObj isTooManyMembers]) {
        jsonDict[@"too_many_members"] = valueObj.tooManyMembers;
        jsonDict[@".tag"] = @"too_many_members";
    }
    else if ([valueObj isTooManyPendingInvites]) {
        jsonDict[@"too_many_pending_invites"] = valueObj.tooManyPendingInvites;
        jsonDict[@".tag"] = @"too_many_pending_invites";
    }
    else if ([valueObj isRateLimit]) {
        jsonDict[@".tag"] = @"rate_limit";
    }
    else if ([valueObj isTooManyInvitees]) {
        jsonDict[@".tag"] = @"too_many_invitees";
    }
    else if ([valueObj isInsufficientPlan]) {
        jsonDict[@".tag"] = @"insufficient_plan";
    }
    else if ([valueObj isTeamFolder]) {
        jsonDict[@".tag"] = @"team_folder";
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

+ (DbxSharingAddFolderMemberError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"access_error"]) {
        DbxSharingSharedFolderAccessError *accessError = [DbxSharingSharedFolderAccessErrorSerializer deserialize:valueDict[@"access_error"]];
        return [[DbxSharingAddFolderMemberError alloc] initWithAccessError:accessError];
    }
    if ([tag isEqualToString:@"email_unverified"]) {
        return [[DbxSharingAddFolderMemberError alloc] initWithEmailUnverified];
    }
    if ([tag isEqualToString:@"bad_member"]) {
        DbxSharingAddMemberSelectorError *badMember = [DbxSharingAddMemberSelectorErrorSerializer deserialize:valueDict[@"bad_member"]];
        return [[DbxSharingAddFolderMemberError alloc] initWithBadMember:badMember];
    }
    if ([tag isEqualToString:@"cant_share_outside_team"]) {
        return [[DbxSharingAddFolderMemberError alloc] initWithCantShareOutsideTeam];
    }
    if ([tag isEqualToString:@"too_many_members"]) {
        NSNumber *tooManyMembers = valueDict[@"too_many_members"];
        return [[DbxSharingAddFolderMemberError alloc] initWithTooManyMembers:tooManyMembers];
    }
    if ([tag isEqualToString:@"too_many_pending_invites"]) {
        NSNumber *tooManyPendingInvites = valueDict[@"too_many_pending_invites"];
        return [[DbxSharingAddFolderMemberError alloc] initWithTooManyPendingInvites:tooManyPendingInvites];
    }
    if ([tag isEqualToString:@"rate_limit"]) {
        return [[DbxSharingAddFolderMemberError alloc] initWithRateLimit];
    }
    if ([tag isEqualToString:@"too_many_invitees"]) {
        return [[DbxSharingAddFolderMemberError alloc] initWithTooManyInvitees];
    }
    if ([tag isEqualToString:@"insufficient_plan"]) {
        return [[DbxSharingAddFolderMemberError alloc] initWithInsufficientPlan];
    }
    if ([tag isEqualToString:@"team_folder"]) {
        return [[DbxSharingAddFolderMemberError alloc] initWithTeamFolder];
    }
    if ([tag isEqualToString:@"no_permission"]) {
        return [[DbxSharingAddFolderMemberError alloc] initWithNoPermission];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxSharingAddFolderMemberError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end