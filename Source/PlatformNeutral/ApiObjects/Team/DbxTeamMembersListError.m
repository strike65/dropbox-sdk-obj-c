///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamMembersListError.h"

@implementation DbxTeamMembersListError 

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = TeamMembersListErrorOther;
    }
    return self;
}

- (BOOL)isOther {
    return _tag == TeamMembersListErrorOther;
}

- (NSString *)getTagName {
    switch (_tag) {
        case TeamMembersListErrorOther:
           return @"TeamMembersListErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamMembersListErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamMembersListErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamMembersListErrorSerializer serialize:self] description];
}

@end


@implementation DbxTeamMembersListErrorSerializer 

+ (NSDictionary *)serialize:(DbxTeamMembersListError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxTeamMembersListError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"other"]) {
        return [[DbxTeamMembersListError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end