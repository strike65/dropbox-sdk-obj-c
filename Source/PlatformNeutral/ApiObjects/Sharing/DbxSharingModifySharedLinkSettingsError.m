///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingModifySharedLinkSettingsError.h"
#import "DbxSharingSharedLinkError.h"
#import "DbxSharingSharedLinkSettingsError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingModifySharedLinkSettingsError 

- (instancetype)initWithSharedLinkNotFound {
    self = [super init];
    if (self != nil) {
        _tag = SharingModifySharedLinkSettingsErrorSharedLinkNotFound;
    }
    return self;
}

- (instancetype)initWithSharedLinkAccessDenied {
    self = [super init];
    if (self != nil) {
        _tag = SharingModifySharedLinkSettingsErrorSharedLinkAccessDenied;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = SharingModifySharedLinkSettingsErrorOther;
    }
    return self;
}

- (instancetype)initWithSettingsError:(DbxSharingSharedLinkSettingsError *)settingsError {
    self = [super init];
    if (self != nil) {
        _tag = SharingModifySharedLinkSettingsErrorSettingsError;
        _settingsError = settingsError;
    }
    return self;
}

- (instancetype)initWithEmailNotVerified {
    self = [super init];
    if (self != nil) {
        _tag = SharingModifySharedLinkSettingsErrorEmailNotVerified;
    }
    return self;
}

- (BOOL)isSharedLinkNotFound {
    return _tag == SharingModifySharedLinkSettingsErrorSharedLinkNotFound;
}

- (BOOL)isSharedLinkAccessDenied {
    return _tag == SharingModifySharedLinkSettingsErrorSharedLinkAccessDenied;
}

- (BOOL)isOther {
    return _tag == SharingModifySharedLinkSettingsErrorOther;
}

- (BOOL)isSettingsError {
    return _tag == SharingModifySharedLinkSettingsErrorSettingsError;
}

- (BOOL)isEmailNotVerified {
    return _tag == SharingModifySharedLinkSettingsErrorEmailNotVerified;
}

- (NSString *)getTagName {
    switch (_tag) {
        case SharingModifySharedLinkSettingsErrorSharedLinkNotFound:
           return @"SharingModifySharedLinkSettingsErrorSharedLinkNotFound";
        case SharingModifySharedLinkSettingsErrorSharedLinkAccessDenied:
           return @"SharingModifySharedLinkSettingsErrorSharedLinkAccessDenied";
        case SharingModifySharedLinkSettingsErrorOther:
           return @"SharingModifySharedLinkSettingsErrorOther";
        case SharingModifySharedLinkSettingsErrorSettingsError:
           return @"SharingModifySharedLinkSettingsErrorSettingsError";
        case SharingModifySharedLinkSettingsErrorEmailNotVerified:
           return @"SharingModifySharedLinkSettingsErrorEmailNotVerified";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (DbxSharingSharedLinkSettingsError *)settingsError {
    if (_tag != SharingModifySharedLinkSettingsErrorSettingsError) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required SharingModifySharedLinkSettingsErrorSettingsError, but was %@.", [self getTagName]];
    }
    return _settingsError;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingModifySharedLinkSettingsErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingModifySharedLinkSettingsErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingModifySharedLinkSettingsErrorSerializer serialize:self] description];
}

@end


@implementation DbxSharingModifySharedLinkSettingsErrorSerializer 

+ (NSDictionary *)serialize:(DbxSharingModifySharedLinkSettingsError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isSharedLinkNotFound]) {
        jsonDict[@".tag"] = @"shared_link_not_found";
    }
    else if ([valueObj isSharedLinkAccessDenied]) {
        jsonDict[@".tag"] = @"shared_link_access_denied";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else if ([valueObj isSettingsError]) {
        jsonDict = [[DbxSharingSharedLinkSettingsErrorSerializer serialize:valueObj.settingsError] mutableCopy];
        jsonDict[@".tag"] = @"settings_error";
    }
    else if ([valueObj isEmailNotVerified]) {
        jsonDict[@".tag"] = @"email_not_verified";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxSharingModifySharedLinkSettingsError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"shared_link_not_found"]) {
        return [[DbxSharingModifySharedLinkSettingsError alloc] initWithSharedLinkNotFound];
    }
    if ([tag isEqualToString:@"shared_link_access_denied"]) {
        return [[DbxSharingModifySharedLinkSettingsError alloc] initWithSharedLinkAccessDenied];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxSharingModifySharedLinkSettingsError alloc] initWithOther];
    }
    if ([tag isEqualToString:@"settings_error"]) {
        DbxSharingSharedLinkSettingsError *settingsError = [DbxSharingSharedLinkSettingsErrorSerializer deserialize:valueDict[@"settings_error"]];
        return [[DbxSharingModifySharedLinkSettingsError alloc] initWithSettingsError:settingsError];
    }
    if ([tag isEqualToString:@"email_not_verified"]) {
        return [[DbxSharingModifySharedLinkSettingsError alloc] initWithEmailNotVerified];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end