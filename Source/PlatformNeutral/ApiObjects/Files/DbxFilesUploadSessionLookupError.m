///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesUploadSessionLookupError.h"
#import "DbxFilesUploadSessionOffsetError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesUploadSessionLookupError 

- (instancetype)initWithNotFound {
    self = [super init];
    if (self != nil) {
        _tag = FilesUploadSessionLookupErrorNotFound;
    }
    return self;
}

- (instancetype)initWithIncorrectOffset:(DbxFilesUploadSessionOffsetError *)incorrectOffset {
    self = [super init];
    if (self != nil) {
        _tag = FilesUploadSessionLookupErrorIncorrectOffset;
        _incorrectOffset = incorrectOffset;
    }
    return self;
}

- (instancetype)initWithClosed {
    self = [super init];
    if (self != nil) {
        _tag = FilesUploadSessionLookupErrorClosed;
    }
    return self;
}

- (instancetype)initWithNotClosed {
    self = [super init];
    if (self != nil) {
        _tag = FilesUploadSessionLookupErrorNotClosed;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = FilesUploadSessionLookupErrorOther;
    }
    return self;
}

- (BOOL)isNotFound {
    return _tag == FilesUploadSessionLookupErrorNotFound;
}

- (BOOL)isIncorrectOffset {
    return _tag == FilesUploadSessionLookupErrorIncorrectOffset;
}

- (BOOL)isClosed {
    return _tag == FilesUploadSessionLookupErrorClosed;
}

- (BOOL)isNotClosed {
    return _tag == FilesUploadSessionLookupErrorNotClosed;
}

- (BOOL)isOther {
    return _tag == FilesUploadSessionLookupErrorOther;
}

- (NSString *)getTagName {
    switch (_tag) {
        case FilesUploadSessionLookupErrorNotFound:
           return @"FilesUploadSessionLookupErrorNotFound";
        case FilesUploadSessionLookupErrorIncorrectOffset:
           return @"FilesUploadSessionLookupErrorIncorrectOffset";
        case FilesUploadSessionLookupErrorClosed:
           return @"FilesUploadSessionLookupErrorClosed";
        case FilesUploadSessionLookupErrorNotClosed:
           return @"FilesUploadSessionLookupErrorNotClosed";
        case FilesUploadSessionLookupErrorOther:
           return @"FilesUploadSessionLookupErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (DbxFilesUploadSessionOffsetError *)incorrectOffset {
    if (_tag != FilesUploadSessionLookupErrorIncorrectOffset) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required FilesUploadSessionLookupErrorIncorrectOffset, but was %@.", [self getTagName]];
    }
    return _incorrectOffset;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesUploadSessionLookupErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesUploadSessionLookupErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesUploadSessionLookupErrorSerializer serialize:self] description];
}

@end


@implementation DbxFilesUploadSessionLookupErrorSerializer 

+ (NSDictionary *)serialize:(DbxFilesUploadSessionLookupError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isNotFound]) {
        jsonDict[@".tag"] = @"not_found";
    }
    else if ([valueObj isIncorrectOffset]) {
        jsonDict = [[DbxFilesUploadSessionOffsetErrorSerializer serialize:valueObj.incorrectOffset] mutableCopy];
        jsonDict[@".tag"] = @"incorrect_offset";
    }
    else if ([valueObj isClosed]) {
        jsonDict[@".tag"] = @"closed";
    }
    else if ([valueObj isNotClosed]) {
        jsonDict[@".tag"] = @"not_closed";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxFilesUploadSessionLookupError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"not_found"]) {
        return [[DbxFilesUploadSessionLookupError alloc] initWithNotFound];
    }
    if ([tag isEqualToString:@"incorrect_offset"]) {
        DbxFilesUploadSessionOffsetError *incorrectOffset = [DbxFilesUploadSessionOffsetErrorSerializer deserialize:valueDict];
        return [[DbxFilesUploadSessionLookupError alloc] initWithIncorrectOffset:incorrectOffset];
    }
    if ([tag isEqualToString:@"closed"]) {
        return [[DbxFilesUploadSessionLookupError alloc] initWithClosed];
    }
    if ([tag isEqualToString:@"not_closed"]) {
        return [[DbxFilesUploadSessionLookupError alloc] initWithNotClosed];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxFilesUploadSessionLookupError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end