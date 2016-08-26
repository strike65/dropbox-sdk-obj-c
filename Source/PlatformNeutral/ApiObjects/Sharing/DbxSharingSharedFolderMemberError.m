///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingMemberAccessLevelResult.h"
#import "DbxSharingSharedFolderMemberError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingSharedFolderMemberError 

- (instancetype)initWithInvalidDropboxId {
    self = [super init];
    if (self != nil) {
        _tag = SharingSharedFolderMemberErrorInvalidDropboxId;
    }
    return self;
}

- (instancetype)initWithNotAMember {
    self = [super init];
    if (self != nil) {
        _tag = SharingSharedFolderMemberErrorNotAMember;
    }
    return self;
}

- (instancetype)initWithNoExplicitAccess:(DbxSharingMemberAccessLevelResult *)noExplicitAccess {
    self = [super init];
    if (self != nil) {
        _tag = SharingSharedFolderMemberErrorNoExplicitAccess;
        _noExplicitAccess = noExplicitAccess;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = SharingSharedFolderMemberErrorOther;
    }
    return self;
}

- (BOOL)isInvalidDropboxId {
    return _tag == SharingSharedFolderMemberErrorInvalidDropboxId;
}

- (BOOL)isNotAMember {
    return _tag == SharingSharedFolderMemberErrorNotAMember;
}

- (BOOL)isNoExplicitAccess {
    return _tag == SharingSharedFolderMemberErrorNoExplicitAccess;
}

- (BOOL)isOther {
    return _tag == SharingSharedFolderMemberErrorOther;
}

- (NSString *)getTagName {
    switch (_tag) {
        case SharingSharedFolderMemberErrorInvalidDropboxId:
           return @"SharingSharedFolderMemberErrorInvalidDropboxId";
        case SharingSharedFolderMemberErrorNotAMember:
           return @"SharingSharedFolderMemberErrorNotAMember";
        case SharingSharedFolderMemberErrorNoExplicitAccess:
           return @"SharingSharedFolderMemberErrorNoExplicitAccess";
        case SharingSharedFolderMemberErrorOther:
           return @"SharingSharedFolderMemberErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (DbxSharingMemberAccessLevelResult *)noExplicitAccess {
    if (_tag != SharingSharedFolderMemberErrorNoExplicitAccess) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required SharingSharedFolderMemberErrorNoExplicitAccess, but was %@.", [self getTagName]];
    }
    return _noExplicitAccess;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingSharedFolderMemberErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingSharedFolderMemberErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingSharedFolderMemberErrorSerializer serialize:self] description];
}

@end


@implementation DbxSharingSharedFolderMemberErrorSerializer 

+ (NSDictionary *)serialize:(DbxSharingSharedFolderMemberError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isInvalidDropboxId]) {
        jsonDict[@".tag"] = @"invalid_dropbox_id";
    }
    else if ([valueObj isNotAMember]) {
        jsonDict[@".tag"] = @"not_a_member";
    }
    else if ([valueObj isNoExplicitAccess]) {
        jsonDict = [[DbxSharingMemberAccessLevelResultSerializer serialize:valueObj.noExplicitAccess] mutableCopy];
        jsonDict[@".tag"] = @"no_explicit_access";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxSharingSharedFolderMemberError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"invalid_dropbox_id"]) {
        return [[DbxSharingSharedFolderMemberError alloc] initWithInvalidDropboxId];
    }
    if ([tag isEqualToString:@"not_a_member"]) {
        return [[DbxSharingSharedFolderMemberError alloc] initWithNotAMember];
    }
    if ([tag isEqualToString:@"no_explicit_access"]) {
        DbxSharingMemberAccessLevelResult *noExplicitAccess = [DbxSharingMemberAccessLevelResultSerializer deserialize:valueDict];
        return [[DbxSharingSharedFolderMemberError alloc] initWithNoExplicitAccess:noExplicitAccess];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxSharingSharedFolderMemberError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end