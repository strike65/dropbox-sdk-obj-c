///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesLookupError.h"
#import "DbxSharingListSharedLinksError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingListSharedLinksError 

- (instancetype)initWithPath:(DbxFilesLookupError *)path {
    self = [super init];
    if (self != nil) {
        _tag = SharingListSharedLinksErrorPath;
        _path = path;
    }
    return self;
}

- (instancetype)initWithReset {
    self = [super init];
    if (self != nil) {
        _tag = SharingListSharedLinksErrorReset;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = SharingListSharedLinksErrorOther;
    }
    return self;
}

- (BOOL)isPath {
    return _tag == SharingListSharedLinksErrorPath;
}

- (BOOL)isReset {
    return _tag == SharingListSharedLinksErrorReset;
}

- (BOOL)isOther {
    return _tag == SharingListSharedLinksErrorOther;
}

- (NSString *)getTagName {
    switch (_tag) {
        case SharingListSharedLinksErrorPath:
           return @"SharingListSharedLinksErrorPath";
        case SharingListSharedLinksErrorReset:
           return @"SharingListSharedLinksErrorReset";
        case SharingListSharedLinksErrorOther:
           return @"SharingListSharedLinksErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (DbxFilesLookupError *)path {
    if (_tag != SharingListSharedLinksErrorPath) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required SharingListSharedLinksErrorPath, but was %@.", [self getTagName]];
    }
    return _path;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingListSharedLinksErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingListSharedLinksErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingListSharedLinksErrorSerializer serialize:self] description];
}

@end


@implementation DbxSharingListSharedLinksErrorSerializer 

+ (NSDictionary *)serialize:(DbxSharingListSharedLinksError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isPath]) {
        jsonDict = [[DbxFilesLookupErrorSerializer serialize:valueObj.path] mutableCopy];
        jsonDict[@".tag"] = @"path";
    }
    else if ([valueObj isReset]) {
        jsonDict[@".tag"] = @"reset";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxSharingListSharedLinksError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"path"]) {
        DbxFilesLookupError *path = [DbxFilesLookupErrorSerializer deserialize:valueDict[@"path"]];
        return [[DbxSharingListSharedLinksError alloc] initWithPath:path];
    }
    if ([tag isEqualToString:@"reset"]) {
        return [[DbxSharingListSharedLinksError alloc] initWithReset];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxSharingListSharedLinksError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end