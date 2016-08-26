///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingAddFileMemberError.h"
#import "DbxSharingSharingFileAccessError.h"
#import "DbxSharingSharingUserError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingAddFileMemberError 

- (instancetype)initWithUserError:(DbxSharingSharingUserError *)userError {
    self = [super init];
    if (self != nil) {
        _tag = SharingAddFileMemberErrorUserError;
        _userError = userError;
    }
    return self;
}

- (instancetype)initWithAccessError:(DbxSharingSharingFileAccessError *)accessError {
    self = [super init];
    if (self != nil) {
        _tag = SharingAddFileMemberErrorAccessError;
        _accessError = accessError;
    }
    return self;
}

- (instancetype)initWithRateLimit {
    self = [super init];
    if (self != nil) {
        _tag = SharingAddFileMemberErrorRateLimit;
    }
    return self;
}

- (instancetype)initWithInvalidComment {
    self = [super init];
    if (self != nil) {
        _tag = SharingAddFileMemberErrorInvalidComment;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = SharingAddFileMemberErrorOther;
    }
    return self;
}

- (BOOL)isUserError {
    return _tag == SharingAddFileMemberErrorUserError;
}

- (BOOL)isAccessError {
    return _tag == SharingAddFileMemberErrorAccessError;
}

- (BOOL)isRateLimit {
    return _tag == SharingAddFileMemberErrorRateLimit;
}

- (BOOL)isInvalidComment {
    return _tag == SharingAddFileMemberErrorInvalidComment;
}

- (BOOL)isOther {
    return _tag == SharingAddFileMemberErrorOther;
}

- (NSString *)getTagName {
    switch (_tag) {
        case SharingAddFileMemberErrorUserError:
           return @"SharingAddFileMemberErrorUserError";
        case SharingAddFileMemberErrorAccessError:
           return @"SharingAddFileMemberErrorAccessError";
        case SharingAddFileMemberErrorRateLimit:
           return @"SharingAddFileMemberErrorRateLimit";
        case SharingAddFileMemberErrorInvalidComment:
           return @"SharingAddFileMemberErrorInvalidComment";
        case SharingAddFileMemberErrorOther:
           return @"SharingAddFileMemberErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (DbxSharingSharingUserError *)userError {
    if (_tag != SharingAddFileMemberErrorUserError) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required SharingAddFileMemberErrorUserError, but was %@.", [self getTagName]];
    }
    return _userError;
}

- (DbxSharingSharingFileAccessError *)accessError {
    if (_tag != SharingAddFileMemberErrorAccessError) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required SharingAddFileMemberErrorAccessError, but was %@.", [self getTagName]];
    }
    return _accessError;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingAddFileMemberErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingAddFileMemberErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingAddFileMemberErrorSerializer serialize:self] description];
}

@end


@implementation DbxSharingAddFileMemberErrorSerializer 

+ (NSDictionary *)serialize:(DbxSharingAddFileMemberError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isUserError]) {
        jsonDict = [[DbxSharingSharingUserErrorSerializer serialize:valueObj.userError] mutableCopy];
        jsonDict[@".tag"] = @"user_error";
    }
    else if ([valueObj isAccessError]) {
        jsonDict = [[DbxSharingSharingFileAccessErrorSerializer serialize:valueObj.accessError] mutableCopy];
        jsonDict[@".tag"] = @"access_error";
    }
    else if ([valueObj isRateLimit]) {
        jsonDict[@".tag"] = @"rate_limit";
    }
    else if ([valueObj isInvalidComment]) {
        jsonDict[@".tag"] = @"invalid_comment";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxSharingAddFileMemberError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"user_error"]) {
        DbxSharingSharingUserError *userError = [DbxSharingSharingUserErrorSerializer deserialize:valueDict[@"user_error"]];
        return [[DbxSharingAddFileMemberError alloc] initWithUserError:userError];
    }
    if ([tag isEqualToString:@"access_error"]) {
        DbxSharingSharingFileAccessError *accessError = [DbxSharingSharingFileAccessErrorSerializer deserialize:valueDict[@"access_error"]];
        return [[DbxSharingAddFileMemberError alloc] initWithAccessError:accessError];
    }
    if ([tag isEqualToString:@"rate_limit"]) {
        return [[DbxSharingAddFileMemberError alloc] initWithRateLimit];
    }
    if ([tag isEqualToString:@"invalid_comment"]) {
        return [[DbxSharingAddFileMemberError alloc] initWithInvalidComment];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxSharingAddFileMemberError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end