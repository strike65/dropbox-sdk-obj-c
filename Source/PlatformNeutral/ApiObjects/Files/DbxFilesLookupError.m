///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesLookupError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesLookupError 

- (instancetype)initWithMalformedPath:(NSString *)malformedPath {
    self = [super init];
    if (self != nil) {
        _tag = FilesLookupErrorMalformedPath;
        _malformedPath = malformedPath;
    }
    return self;
}

- (instancetype)initWithNotFound {
    self = [super init];
    if (self != nil) {
        _tag = FilesLookupErrorNotFound;
    }
    return self;
}

- (instancetype)initWithNotFile {
    self = [super init];
    if (self != nil) {
        _tag = FilesLookupErrorNotFile;
    }
    return self;
}

- (instancetype)initWithNotFolder {
    self = [super init];
    if (self != nil) {
        _tag = FilesLookupErrorNotFolder;
    }
    return self;
}

- (instancetype)initWithRestrictedContent {
    self = [super init];
    if (self != nil) {
        _tag = FilesLookupErrorRestrictedContent;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = FilesLookupErrorOther;
    }
    return self;
}

- (BOOL)isMalformedPath {
    return _tag == FilesLookupErrorMalformedPath;
}

- (BOOL)isNotFound {
    return _tag == FilesLookupErrorNotFound;
}

- (BOOL)isNotFile {
    return _tag == FilesLookupErrorNotFile;
}

- (BOOL)isNotFolder {
    return _tag == FilesLookupErrorNotFolder;
}

- (BOOL)isRestrictedContent {
    return _tag == FilesLookupErrorRestrictedContent;
}

- (BOOL)isOther {
    return _tag == FilesLookupErrorOther;
}

- (NSString *)getTagName {
    switch (_tag) {
        case FilesLookupErrorMalformedPath:
           return @"FilesLookupErrorMalformedPath";
        case FilesLookupErrorNotFound:
           return @"FilesLookupErrorNotFound";
        case FilesLookupErrorNotFile:
           return @"FilesLookupErrorNotFile";
        case FilesLookupErrorNotFolder:
           return @"FilesLookupErrorNotFolder";
        case FilesLookupErrorRestrictedContent:
           return @"FilesLookupErrorRestrictedContent";
        case FilesLookupErrorOther:
           return @"FilesLookupErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (NSString *)malformedPath {
    if (_tag != FilesLookupErrorMalformedPath) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required FilesLookupErrorMalformedPath, but was %@.", [self getTagName]];
    }
    return _malformedPath;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesLookupErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesLookupErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesLookupErrorSerializer serialize:self] description];
}

@end


@implementation DbxFilesLookupErrorSerializer 

+ (NSDictionary *)serialize:(DbxFilesLookupError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isMalformedPath]) {
        if (valueObj.malformedPath) {
            jsonDict[@"malformed_path"] = valueObj.malformedPath;
        }
        jsonDict[@".tag"] = @"malformed_path";
    }
    else if ([valueObj isNotFound]) {
        jsonDict[@".tag"] = @"not_found";
    }
    else if ([valueObj isNotFile]) {
        jsonDict[@".tag"] = @"not_file";
    }
    else if ([valueObj isNotFolder]) {
        jsonDict[@".tag"] = @"not_folder";
    }
    else if ([valueObj isRestrictedContent]) {
        jsonDict[@".tag"] = @"restricted_content";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxFilesLookupError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"malformed_path"]) {
        NSString *malformedPath = valueDict[@"malformed_path"] ? valueDict[@"malformed_path"] : nil;
        return [[DbxFilesLookupError alloc] initWithMalformedPath:malformedPath];
    }
    if ([tag isEqualToString:@"not_found"]) {
        return [[DbxFilesLookupError alloc] initWithNotFound];
    }
    if ([tag isEqualToString:@"not_file"]) {
        return [[DbxFilesLookupError alloc] initWithNotFile];
    }
    if ([tag isEqualToString:@"not_folder"]) {
        return [[DbxFilesLookupError alloc] initWithNotFolder];
    }
    if ([tag isEqualToString:@"restricted_content"]) {
        return [[DbxFilesLookupError alloc] initWithRestrictedContent];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxFilesLookupError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end