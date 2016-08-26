///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingMemberAccessLevelResult.h"
#import "DbxSharingRemoveFileMemberError.h"
#import "DbxSharingSharingFileAccessError.h"
#import "DbxSharingSharingUserError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingRemoveFileMemberError 

- (instancetype)initWithUserError:(DbxSharingSharingUserError *)userError {
    self = [super init];
    if (self != nil) {
        _tag = SharingRemoveFileMemberErrorUserError;
        _userError = userError;
    }
    return self;
}

- (instancetype)initWithAccessError:(DbxSharingSharingFileAccessError *)accessError {
    self = [super init];
    if (self != nil) {
        _tag = SharingRemoveFileMemberErrorAccessError;
        _accessError = accessError;
    }
    return self;
}

- (instancetype)initWithNoExplicitAccess:(DbxSharingMemberAccessLevelResult *)noExplicitAccess {
    self = [super init];
    if (self != nil) {
        _tag = SharingRemoveFileMemberErrorNoExplicitAccess;
        _noExplicitAccess = noExplicitAccess;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = SharingRemoveFileMemberErrorOther;
    }
    return self;
}

- (BOOL)isUserError {
    return _tag == SharingRemoveFileMemberErrorUserError;
}

- (BOOL)isAccessError {
    return _tag == SharingRemoveFileMemberErrorAccessError;
}

- (BOOL)isNoExplicitAccess {
    return _tag == SharingRemoveFileMemberErrorNoExplicitAccess;
}

- (BOOL)isOther {
    return _tag == SharingRemoveFileMemberErrorOther;
}

- (NSString *)getTagName {
    switch (_tag) {
        case SharingRemoveFileMemberErrorUserError:
           return @"SharingRemoveFileMemberErrorUserError";
        case SharingRemoveFileMemberErrorAccessError:
           return @"SharingRemoveFileMemberErrorAccessError";
        case SharingRemoveFileMemberErrorNoExplicitAccess:
           return @"SharingRemoveFileMemberErrorNoExplicitAccess";
        case SharingRemoveFileMemberErrorOther:
           return @"SharingRemoveFileMemberErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (DbxSharingSharingUserError *)userError {
    if (_tag != SharingRemoveFileMemberErrorUserError) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required SharingRemoveFileMemberErrorUserError, but was %@.", [self getTagName]];
    }
    return _userError;
}

- (DbxSharingSharingFileAccessError *)accessError {
    if (_tag != SharingRemoveFileMemberErrorAccessError) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required SharingRemoveFileMemberErrorAccessError, but was %@.", [self getTagName]];
    }
    return _accessError;
}

- (DbxSharingMemberAccessLevelResult *)noExplicitAccess {
    if (_tag != SharingRemoveFileMemberErrorNoExplicitAccess) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required SharingRemoveFileMemberErrorNoExplicitAccess, but was %@.", [self getTagName]];
    }
    return _noExplicitAccess;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingRemoveFileMemberErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingRemoveFileMemberErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingRemoveFileMemberErrorSerializer serialize:self] description];
}

@end


@implementation DbxSharingRemoveFileMemberErrorSerializer 

+ (NSDictionary *)serialize:(DbxSharingRemoveFileMemberError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isUserError]) {
        jsonDict = [[DbxSharingSharingUserErrorSerializer serialize:valueObj.userError] mutableCopy];
        jsonDict[@".tag"] = @"user_error";
    }
    else if ([valueObj isAccessError]) {
        jsonDict = [[DbxSharingSharingFileAccessErrorSerializer serialize:valueObj.accessError] mutableCopy];
        jsonDict[@".tag"] = @"access_error";
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

+ (DbxSharingRemoveFileMemberError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"user_error"]) {
        DbxSharingSharingUserError *userError = [DbxSharingSharingUserErrorSerializer deserialize:valueDict[@"user_error"]];
        return [[DbxSharingRemoveFileMemberError alloc] initWithUserError:userError];
    }
    if ([tag isEqualToString:@"access_error"]) {
        DbxSharingSharingFileAccessError *accessError = [DbxSharingSharingFileAccessErrorSerializer deserialize:valueDict[@"access_error"]];
        return [[DbxSharingRemoveFileMemberError alloc] initWithAccessError:accessError];
    }
    if ([tag isEqualToString:@"no_explicit_access"]) {
        DbxSharingMemberAccessLevelResult *noExplicitAccess = [DbxSharingMemberAccessLevelResultSerializer deserialize:valueDict];
        return [[DbxSharingRemoveFileMemberError alloc] initWithNoExplicitAccess:noExplicitAccess];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxSharingRemoveFileMemberError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end