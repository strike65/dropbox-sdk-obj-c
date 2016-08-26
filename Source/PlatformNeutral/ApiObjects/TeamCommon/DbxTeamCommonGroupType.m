///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamCommonGroupType.h"

@implementation DbxTeamCommonGroupType 

- (instancetype)initWithTeam {
    self = [super init];
    if (self != nil) {
        _tag = TeamCommonGroupTypeTeam;
    }
    return self;
}

- (instancetype)initWithUserManaged {
    self = [super init];
    if (self != nil) {
        _tag = TeamCommonGroupTypeUserManaged;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = TeamCommonGroupTypeOther;
    }
    return self;
}

- (BOOL)isTeam {
    return _tag == TeamCommonGroupTypeTeam;
}

- (BOOL)isUserManaged {
    return _tag == TeamCommonGroupTypeUserManaged;
}

- (BOOL)isOther {
    return _tag == TeamCommonGroupTypeOther;
}

- (NSString *)getTagName {
    switch (_tag) {
        case TeamCommonGroupTypeTeam:
           return @"TeamCommonGroupTypeTeam";
        case TeamCommonGroupTypeUserManaged:
           return @"TeamCommonGroupTypeUserManaged";
        case TeamCommonGroupTypeOther:
           return @"TeamCommonGroupTypeOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamCommonGroupTypeSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamCommonGroupTypeSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamCommonGroupTypeSerializer serialize:self] description];
}

@end


@implementation DbxTeamCommonGroupTypeSerializer 

+ (NSDictionary *)serialize:(DbxTeamCommonGroupType *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isTeam]) {
        jsonDict[@".tag"] = @"team";
    }
    else if ([valueObj isUserManaged]) {
        jsonDict[@".tag"] = @"user_managed";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxTeamCommonGroupType *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"team"]) {
        return [[DbxTeamCommonGroupType alloc] initWithTeam];
    }
    if ([tag isEqualToString:@"user_managed"]) {
        return [[DbxTeamCommonGroupType alloc] initWithUserManaged];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxTeamCommonGroupType alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end