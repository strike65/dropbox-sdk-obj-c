///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingGetFileMetadataIndividualResult.h"
#import "DbxSharingSharedFileMetadata.h"
#import "DbxSharingSharingFileAccessError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingGetFileMetadataIndividualResult 

- (instancetype)initWithMetadata:(DbxSharingSharedFileMetadata *)metadata {
    self = [super init];
    if (self != nil) {
        _tag = SharingGetFileMetadataIndividualResultMetadata;
        _metadata = metadata;
    }
    return self;
}

- (instancetype)initWithAccessError:(DbxSharingSharingFileAccessError *)accessError {
    self = [super init];
    if (self != nil) {
        _tag = SharingGetFileMetadataIndividualResultAccessError;
        _accessError = accessError;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = SharingGetFileMetadataIndividualResultOther;
    }
    return self;
}

- (BOOL)isMetadata {
    return _tag == SharingGetFileMetadataIndividualResultMetadata;
}

- (BOOL)isAccessError {
    return _tag == SharingGetFileMetadataIndividualResultAccessError;
}

- (BOOL)isOther {
    return _tag == SharingGetFileMetadataIndividualResultOther;
}

- (NSString *)getTagName {
    switch (_tag) {
        case SharingGetFileMetadataIndividualResultMetadata:
           return @"SharingGetFileMetadataIndividualResultMetadata";
        case SharingGetFileMetadataIndividualResultAccessError:
           return @"SharingGetFileMetadataIndividualResultAccessError";
        case SharingGetFileMetadataIndividualResultOther:
           return @"SharingGetFileMetadataIndividualResultOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (DbxSharingSharedFileMetadata *)metadata {
    if (_tag != SharingGetFileMetadataIndividualResultMetadata) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required SharingGetFileMetadataIndividualResultMetadata, but was %@.", [self getTagName]];
    }
    return _metadata;
}

- (DbxSharingSharingFileAccessError *)accessError {
    if (_tag != SharingGetFileMetadataIndividualResultAccessError) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required SharingGetFileMetadataIndividualResultAccessError, but was %@.", [self getTagName]];
    }
    return _accessError;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingGetFileMetadataIndividualResultSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingGetFileMetadataIndividualResultSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingGetFileMetadataIndividualResultSerializer serialize:self] description];
}

@end


@implementation DbxSharingGetFileMetadataIndividualResultSerializer 

+ (NSDictionary *)serialize:(DbxSharingGetFileMetadataIndividualResult *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isMetadata]) {
        jsonDict = [[DbxSharingSharedFileMetadataSerializer serialize:valueObj.metadata] mutableCopy];
        jsonDict[@".tag"] = @"metadata";
    }
    else if ([valueObj isAccessError]) {
        jsonDict = [[DbxSharingSharingFileAccessErrorSerializer serialize:valueObj.accessError] mutableCopy];
        jsonDict[@".tag"] = @"access_error";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxSharingGetFileMetadataIndividualResult *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"metadata"]) {
        DbxSharingSharedFileMetadata *metadata = [DbxSharingSharedFileMetadataSerializer deserialize:valueDict];
        return [[DbxSharingGetFileMetadataIndividualResult alloc] initWithMetadata:metadata];
    }
    if ([tag isEqualToString:@"access_error"]) {
        DbxSharingSharingFileAccessError *accessError = [DbxSharingSharingFileAccessErrorSerializer deserialize:valueDict[@"access_error"]];
        return [[DbxSharingGetFileMetadataIndividualResult alloc] initWithAccessError:accessError];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxSharingGetFileMetadataIndividualResult alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end