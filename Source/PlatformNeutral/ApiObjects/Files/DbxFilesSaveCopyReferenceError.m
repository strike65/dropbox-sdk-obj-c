///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesSaveCopyReferenceError.h"
#import "DbxFilesWriteError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesSaveCopyReferenceError 

- (instancetype)initWithPath:(DbxFilesWriteError *)path {
    self = [super init];
    if (self != nil) {
        _tag = FilesSaveCopyReferenceErrorPath;
        _path = path;
    }
    return self;
}

- (instancetype)initWithInvalidCopyReference {
    self = [super init];
    if (self != nil) {
        _tag = FilesSaveCopyReferenceErrorInvalidCopyReference;
    }
    return self;
}

- (instancetype)initWithNoPermission {
    self = [super init];
    if (self != nil) {
        _tag = FilesSaveCopyReferenceErrorNoPermission;
    }
    return self;
}

- (instancetype)initWithNotFound {
    self = [super init];
    if (self != nil) {
        _tag = FilesSaveCopyReferenceErrorNotFound;
    }
    return self;
}

- (instancetype)initWithTooManyFiles {
    self = [super init];
    if (self != nil) {
        _tag = FilesSaveCopyReferenceErrorTooManyFiles;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = FilesSaveCopyReferenceErrorOther;
    }
    return self;
}

- (BOOL)isPath {
    return _tag == FilesSaveCopyReferenceErrorPath;
}

- (BOOL)isInvalidCopyReference {
    return _tag == FilesSaveCopyReferenceErrorInvalidCopyReference;
}

- (BOOL)isNoPermission {
    return _tag == FilesSaveCopyReferenceErrorNoPermission;
}

- (BOOL)isNotFound {
    return _tag == FilesSaveCopyReferenceErrorNotFound;
}

- (BOOL)isTooManyFiles {
    return _tag == FilesSaveCopyReferenceErrorTooManyFiles;
}

- (BOOL)isOther {
    return _tag == FilesSaveCopyReferenceErrorOther;
}

- (NSString *)getTagName {
    switch (_tag) {
        case FilesSaveCopyReferenceErrorPath:
           return @"FilesSaveCopyReferenceErrorPath";
        case FilesSaveCopyReferenceErrorInvalidCopyReference:
           return @"FilesSaveCopyReferenceErrorInvalidCopyReference";
        case FilesSaveCopyReferenceErrorNoPermission:
           return @"FilesSaveCopyReferenceErrorNoPermission";
        case FilesSaveCopyReferenceErrorNotFound:
           return @"FilesSaveCopyReferenceErrorNotFound";
        case FilesSaveCopyReferenceErrorTooManyFiles:
           return @"FilesSaveCopyReferenceErrorTooManyFiles";
        case FilesSaveCopyReferenceErrorOther:
           return @"FilesSaveCopyReferenceErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (DbxFilesWriteError *)path {
    if (_tag != FilesSaveCopyReferenceErrorPath) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required FilesSaveCopyReferenceErrorPath, but was %@.", [self getTagName]];
    }
    return _path;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesSaveCopyReferenceErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesSaveCopyReferenceErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesSaveCopyReferenceErrorSerializer serialize:self] description];
}

@end


@implementation DbxFilesSaveCopyReferenceErrorSerializer 

+ (NSDictionary *)serialize:(DbxFilesSaveCopyReferenceError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isPath]) {
        jsonDict = [[DbxFilesWriteErrorSerializer serialize:valueObj.path] mutableCopy];
        jsonDict[@".tag"] = @"path";
    }
    else if ([valueObj isInvalidCopyReference]) {
        jsonDict[@".tag"] = @"invalid_copy_reference";
    }
    else if ([valueObj isNoPermission]) {
        jsonDict[@".tag"] = @"no_permission";
    }
    else if ([valueObj isNotFound]) {
        jsonDict[@".tag"] = @"not_found";
    }
    else if ([valueObj isTooManyFiles]) {
        jsonDict[@".tag"] = @"too_many_files";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxFilesSaveCopyReferenceError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"path"]) {
        DbxFilesWriteError *path = [DbxFilesWriteErrorSerializer deserialize:valueDict[@"path"]];
        return [[DbxFilesSaveCopyReferenceError alloc] initWithPath:path];
    }
    if ([tag isEqualToString:@"invalid_copy_reference"]) {
        return [[DbxFilesSaveCopyReferenceError alloc] initWithInvalidCopyReference];
    }
    if ([tag isEqualToString:@"no_permission"]) {
        return [[DbxFilesSaveCopyReferenceError alloc] initWithNoPermission];
    }
    if ([tag isEqualToString:@"not_found"]) {
        return [[DbxFilesSaveCopyReferenceError alloc] initWithNotFound];
    }
    if ([tag isEqualToString:@"too_many_files"]) {
        return [[DbxFilesSaveCopyReferenceError alloc] initWithTooManyFiles];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxFilesSaveCopyReferenceError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end