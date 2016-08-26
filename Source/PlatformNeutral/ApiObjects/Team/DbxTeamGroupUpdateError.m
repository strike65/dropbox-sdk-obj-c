///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamGroupSelectorError.h"
#import "DbxTeamGroupUpdateError.h"

@implementation DbxTeamGroupUpdateError 

- (instancetype)initWithGroupNotFound {
    self = [super init];
    if (self != nil) {
        _tag = TeamGroupUpdateErrorGroupNotFound;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = TeamGroupUpdateErrorOther;
    }
    return self;
}

- (instancetype)initWithExternalIdAlreadyInUse {
    self = [super init];
    if (self != nil) {
        _tag = TeamGroupUpdateErrorExternalIdAlreadyInUse;
    }
    return self;
}

- (BOOL)isGroupNotFound {
    return _tag == TeamGroupUpdateErrorGroupNotFound;
}

- (BOOL)isOther {
    return _tag == TeamGroupUpdateErrorOther;
}

- (BOOL)isExternalIdAlreadyInUse {
    return _tag == TeamGroupUpdateErrorExternalIdAlreadyInUse;
}

- (NSString *)getTagName {
    switch (_tag) {
        case TeamGroupUpdateErrorGroupNotFound:
           return @"TeamGroupUpdateErrorGroupNotFound";
        case TeamGroupUpdateErrorOther:
           return @"TeamGroupUpdateErrorOther";
        case TeamGroupUpdateErrorExternalIdAlreadyInUse:
           return @"TeamGroupUpdateErrorExternalIdAlreadyInUse";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamGroupUpdateErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamGroupUpdateErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamGroupUpdateErrorSerializer serialize:self] description];
}

@end


@implementation DbxTeamGroupUpdateErrorSerializer 

+ (NSDictionary *)serialize:(DbxTeamGroupUpdateError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isGroupNotFound]) {
        jsonDict[@".tag"] = @"group_not_found";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else if ([valueObj isExternalIdAlreadyInUse]) {
        jsonDict[@".tag"] = @"external_id_already_in_use";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxTeamGroupUpdateError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"group_not_found"]) {
        return [[DbxTeamGroupUpdateError alloc] initWithGroupNotFound];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxTeamGroupUpdateError alloc] initWithOther];
    }
    if ([tag isEqualToString:@"external_id_already_in_use"]) {
        return [[DbxTeamGroupUpdateError alloc] initWithExternalIdAlreadyInUse];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end