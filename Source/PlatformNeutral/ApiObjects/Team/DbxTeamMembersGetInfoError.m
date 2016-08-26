///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamMembersGetInfoError.h"

@implementation DbxTeamMembersGetInfoError 

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = TeamMembersGetInfoErrorOther;
    }
    return self;
}

- (BOOL)isOther {
    return _tag == TeamMembersGetInfoErrorOther;
}

- (NSString *)getTagName {
    switch (_tag) {
        case TeamMembersGetInfoErrorOther:
           return @"TeamMembersGetInfoErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamMembersGetInfoErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamMembersGetInfoErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamMembersGetInfoErrorSerializer serialize:self] description];
}

@end


@implementation DbxTeamMembersGetInfoErrorSerializer 

+ (NSDictionary *)serialize:(DbxTeamMembersGetInfoError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxTeamMembersGetInfoError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"other"]) {
        return [[DbxTeamMembersGetInfoError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end