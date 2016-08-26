///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingAddMemberSelectorError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingAddMemberSelectorError 

- (instancetype)initWithAutomaticGroup {
    self = [super init];
    if (self != nil) {
        _tag = SharingAddMemberSelectorErrorAutomaticGroup;
    }
    return self;
}

- (instancetype)initWithInvalidDropboxId:(NSString *)invalidDropboxId {
    self = [super init];
    if (self != nil) {
        _tag = SharingAddMemberSelectorErrorInvalidDropboxId;
        _invalidDropboxId = invalidDropboxId;
    }
    return self;
}

- (instancetype)initWithInvalidEmail:(NSString *)invalidEmail {
    self = [super init];
    if (self != nil) {
        _tag = SharingAddMemberSelectorErrorInvalidEmail;
        _invalidEmail = invalidEmail;
    }
    return self;
}

- (instancetype)initWithUnverifiedDropboxId:(NSString *)unverifiedDropboxId {
    self = [super init];
    if (self != nil) {
        _tag = SharingAddMemberSelectorErrorUnverifiedDropboxId;
        _unverifiedDropboxId = unverifiedDropboxId;
    }
    return self;
}

- (instancetype)initWithGroupDeleted {
    self = [super init];
    if (self != nil) {
        _tag = SharingAddMemberSelectorErrorGroupDeleted;
    }
    return self;
}

- (instancetype)initWithGroupNotOnTeam {
    self = [super init];
    if (self != nil) {
        _tag = SharingAddMemberSelectorErrorGroupNotOnTeam;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = SharingAddMemberSelectorErrorOther;
    }
    return self;
}

- (BOOL)isAutomaticGroup {
    return _tag == SharingAddMemberSelectorErrorAutomaticGroup;
}

- (BOOL)isInvalidDropboxId {
    return _tag == SharingAddMemberSelectorErrorInvalidDropboxId;
}

- (BOOL)isInvalidEmail {
    return _tag == SharingAddMemberSelectorErrorInvalidEmail;
}

- (BOOL)isUnverifiedDropboxId {
    return _tag == SharingAddMemberSelectorErrorUnverifiedDropboxId;
}

- (BOOL)isGroupDeleted {
    return _tag == SharingAddMemberSelectorErrorGroupDeleted;
}

- (BOOL)isGroupNotOnTeam {
    return _tag == SharingAddMemberSelectorErrorGroupNotOnTeam;
}

- (BOOL)isOther {
    return _tag == SharingAddMemberSelectorErrorOther;
}

- (NSString *)getTagName {
    switch (_tag) {
        case SharingAddMemberSelectorErrorAutomaticGroup:
           return @"SharingAddMemberSelectorErrorAutomaticGroup";
        case SharingAddMemberSelectorErrorInvalidDropboxId:
           return @"SharingAddMemberSelectorErrorInvalidDropboxId";
        case SharingAddMemberSelectorErrorInvalidEmail:
           return @"SharingAddMemberSelectorErrorInvalidEmail";
        case SharingAddMemberSelectorErrorUnverifiedDropboxId:
           return @"SharingAddMemberSelectorErrorUnverifiedDropboxId";
        case SharingAddMemberSelectorErrorGroupDeleted:
           return @"SharingAddMemberSelectorErrorGroupDeleted";
        case SharingAddMemberSelectorErrorGroupNotOnTeam:
           return @"SharingAddMemberSelectorErrorGroupNotOnTeam";
        case SharingAddMemberSelectorErrorOther:
           return @"SharingAddMemberSelectorErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (NSString *)invalidDropboxId {
    if (_tag != SharingAddMemberSelectorErrorInvalidDropboxId) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required SharingAddMemberSelectorErrorInvalidDropboxId, but was %@.", [self getTagName]];
    }
    return _invalidDropboxId;
}

- (NSString *)invalidEmail {
    if (_tag != SharingAddMemberSelectorErrorInvalidEmail) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required SharingAddMemberSelectorErrorInvalidEmail, but was %@.", [self getTagName]];
    }
    return _invalidEmail;
}

- (NSString *)unverifiedDropboxId {
    if (_tag != SharingAddMemberSelectorErrorUnverifiedDropboxId) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required SharingAddMemberSelectorErrorUnverifiedDropboxId, but was %@.", [self getTagName]];
    }
    return _unverifiedDropboxId;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingAddMemberSelectorErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingAddMemberSelectorErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingAddMemberSelectorErrorSerializer serialize:self] description];
}

@end


@implementation DbxSharingAddMemberSelectorErrorSerializer 

+ (NSDictionary *)serialize:(DbxSharingAddMemberSelectorError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isAutomaticGroup]) {
        jsonDict[@".tag"] = @"automatic_group";
    }
    else if ([valueObj isInvalidDropboxId]) {
        jsonDict[@"invalid_dropbox_id"] = valueObj.invalidDropboxId;
        jsonDict[@".tag"] = @"invalid_dropbox_id";
    }
    else if ([valueObj isInvalidEmail]) {
        jsonDict[@"invalid_email"] = valueObj.invalidEmail;
        jsonDict[@".tag"] = @"invalid_email";
    }
    else if ([valueObj isUnverifiedDropboxId]) {
        jsonDict[@"unverified_dropbox_id"] = valueObj.unverifiedDropboxId;
        jsonDict[@".tag"] = @"unverified_dropbox_id";
    }
    else if ([valueObj isGroupDeleted]) {
        jsonDict[@".tag"] = @"group_deleted";
    }
    else if ([valueObj isGroupNotOnTeam]) {
        jsonDict[@".tag"] = @"group_not_on_team";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxSharingAddMemberSelectorError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"automatic_group"]) {
        return [[DbxSharingAddMemberSelectorError alloc] initWithAutomaticGroup];
    }
    if ([tag isEqualToString:@"invalid_dropbox_id"]) {
        NSString *invalidDropboxId = valueDict[@"invalid_dropbox_id"];
        return [[DbxSharingAddMemberSelectorError alloc] initWithInvalidDropboxId:invalidDropboxId];
    }
    if ([tag isEqualToString:@"invalid_email"]) {
        NSString *invalidEmail = valueDict[@"invalid_email"];
        return [[DbxSharingAddMemberSelectorError alloc] initWithInvalidEmail:invalidEmail];
    }
    if ([tag isEqualToString:@"unverified_dropbox_id"]) {
        NSString *unverifiedDropboxId = valueDict[@"unverified_dropbox_id"];
        return [[DbxSharingAddMemberSelectorError alloc] initWithUnverifiedDropboxId:unverifiedDropboxId];
    }
    if ([tag isEqualToString:@"group_deleted"]) {
        return [[DbxSharingAddMemberSelectorError alloc] initWithGroupDeleted];
    }
    if ([tag isEqualToString:@"group_not_on_team"]) {
        return [[DbxSharingAddMemberSelectorError alloc] initWithGroupNotOnTeam];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxSharingAddMemberSelectorError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end