///
/// Auto-generated by Stone, do not modify.
///

#import "DbxAsyncPollResultBase.h"
#import "DbxSharingMemberAccessLevelResult.h"
#import "DbxSharingRemoveFolderMemberError.h"
#import "DbxSharingRemoveMemberJobStatus.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingRemoveMemberJobStatus 

- (instancetype)initWithInProgress {
    self = [super init];
    if (self != nil) {
        _tag = SharingRemoveMemberJobStatusInProgress;
    }
    return self;
}

- (instancetype)initWithComplete:(DbxSharingMemberAccessLevelResult *)complete {
    self = [super init];
    if (self != nil) {
        _tag = SharingRemoveMemberJobStatusComplete;
        _complete = complete;
    }
    return self;
}

- (instancetype)initWithFailed:(DbxSharingRemoveFolderMemberError *)failed {
    self = [super init];
    if (self != nil) {
        _tag = SharingRemoveMemberJobStatusFailed;
        _failed = failed;
    }
    return self;
}

- (BOOL)isInProgress {
    return _tag == SharingRemoveMemberJobStatusInProgress;
}

- (BOOL)isComplete {
    return _tag == SharingRemoveMemberJobStatusComplete;
}

- (BOOL)isFailed {
    return _tag == SharingRemoveMemberJobStatusFailed;
}

- (NSString *)getTagName {
    switch (_tag) {
        case SharingRemoveMemberJobStatusInProgress:
           return @"SharingRemoveMemberJobStatusInProgress";
        case SharingRemoveMemberJobStatusComplete:
           return @"SharingRemoveMemberJobStatusComplete";
        case SharingRemoveMemberJobStatusFailed:
           return @"SharingRemoveMemberJobStatusFailed";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (DbxSharingMemberAccessLevelResult *)complete {
    if (_tag != SharingRemoveMemberJobStatusComplete) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required SharingRemoveMemberJobStatusComplete, but was %@.", [self getTagName]];
    }
    return _complete;
}

- (DbxSharingRemoveFolderMemberError *)failed {
    if (_tag != SharingRemoveMemberJobStatusFailed) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required SharingRemoveMemberJobStatusFailed, but was %@.", [self getTagName]];
    }
    return _failed;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingRemoveMemberJobStatusSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingRemoveMemberJobStatusSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingRemoveMemberJobStatusSerializer serialize:self] description];
}

@end


@implementation DbxSharingRemoveMemberJobStatusSerializer 

+ (NSDictionary *)serialize:(DbxSharingRemoveMemberJobStatus *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isInProgress]) {
        jsonDict[@".tag"] = @"in_progress";
    }
    else if ([valueObj isComplete]) {
        jsonDict = [[DbxSharingMemberAccessLevelResultSerializer serialize:valueObj.complete] mutableCopy];
        jsonDict[@".tag"] = @"complete";
    }
    else if ([valueObj isFailed]) {
        jsonDict = [[DbxSharingRemoveFolderMemberErrorSerializer serialize:valueObj.failed] mutableCopy];
        jsonDict[@".tag"] = @"failed";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxSharingRemoveMemberJobStatus *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"in_progress"]) {
        return [[DbxSharingRemoveMemberJobStatus alloc] initWithInProgress];
    }
    if ([tag isEqualToString:@"complete"]) {
        DbxSharingMemberAccessLevelResult *complete = [DbxSharingMemberAccessLevelResultSerializer deserialize:valueDict];
        return [[DbxSharingRemoveMemberJobStatus alloc] initWithComplete:complete];
    }
    if ([tag isEqualToString:@"failed"]) {
        DbxSharingRemoveFolderMemberError *failed = [DbxSharingRemoveFolderMemberErrorSerializer deserialize:valueDict[@"failed"]];
        return [[DbxSharingRemoveMemberJobStatus alloc] initWithFailed:failed];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end