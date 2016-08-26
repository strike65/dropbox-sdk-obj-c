///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingListFilesContinueError.h"
#import "DbxSharingSharingUserError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingListFilesContinueError 

- (instancetype)initWithUserError:(DbxSharingSharingUserError *)userError {
    self = [super init];
    if (self != nil) {
        _tag = SharingListFilesContinueErrorUserError;
        _userError = userError;
    }
    return self;
}

- (instancetype)initWithInvalidCursor {
    self = [super init];
    if (self != nil) {
        _tag = SharingListFilesContinueErrorInvalidCursor;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = SharingListFilesContinueErrorOther;
    }
    return self;
}

- (BOOL)isUserError {
    return _tag == SharingListFilesContinueErrorUserError;
}

- (BOOL)isInvalidCursor {
    return _tag == SharingListFilesContinueErrorInvalidCursor;
}

- (BOOL)isOther {
    return _tag == SharingListFilesContinueErrorOther;
}

- (NSString *)getTagName {
    switch (_tag) {
        case SharingListFilesContinueErrorUserError:
           return @"SharingListFilesContinueErrorUserError";
        case SharingListFilesContinueErrorInvalidCursor:
           return @"SharingListFilesContinueErrorInvalidCursor";
        case SharingListFilesContinueErrorOther:
           return @"SharingListFilesContinueErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (DbxSharingSharingUserError *)userError {
    if (_tag != SharingListFilesContinueErrorUserError) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required SharingListFilesContinueErrorUserError, but was %@.", [self getTagName]];
    }
    return _userError;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingListFilesContinueErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingListFilesContinueErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingListFilesContinueErrorSerializer serialize:self] description];
}

@end


@implementation DbxSharingListFilesContinueErrorSerializer 

+ (NSDictionary *)serialize:(DbxSharingListFilesContinueError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isUserError]) {
        jsonDict = [[DbxSharingSharingUserErrorSerializer serialize:valueObj.userError] mutableCopy];
        jsonDict[@".tag"] = @"user_error";
    }
    else if ([valueObj isInvalidCursor]) {
        jsonDict[@".tag"] = @"invalid_cursor";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxSharingListFilesContinueError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"user_error"]) {
        DbxSharingSharingUserError *userError = [DbxSharingSharingUserErrorSerializer deserialize:valueDict[@"user_error"]];
        return [[DbxSharingListFilesContinueError alloc] initWithUserError:userError];
    }
    if ([tag isEqualToString:@"invalid_cursor"]) {
        return [[DbxSharingListFilesContinueError alloc] initWithInvalidCursor];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxSharingListFilesContinueError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end