///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamListTeamAppsResult.h"
#import "DbxTeamMemberLinkedApps.h"

@implementation DbxTeamListTeamAppsResult 

- (instancetype)initWithApps:(NSArray<DbxTeamMemberLinkedApps *> *)apps hasMore:(NSNumber *)hasMore cursor:(NSString *)cursor {
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](apps);

    self = [super init];
    if (self != nil) {
        _apps = apps;
        _hasMore = hasMore;
        _cursor = cursor;
    }
    return self;
}

- (instancetype)initWithApps:(NSArray<DbxTeamMemberLinkedApps *> *)apps hasMore:(NSNumber *)hasMore {
    return [self initWithApps:apps hasMore:hasMore cursor:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamListTeamAppsResultSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamListTeamAppsResultSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamListTeamAppsResultSerializer serialize:self] description];
}

@end


@implementation DbxTeamListTeamAppsResultSerializer 

+ (NSDictionary *)serialize:(DbxTeamListTeamAppsResult *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"apps"] = [DbxArraySerializer serialize:valueObj.apps withBlock:^id(id elem) { return [DbxTeamMemberLinkedAppsSerializer serialize:elem]; }];
    jsonDict[@"has_more"] = valueObj.hasMore;
    if (valueObj.cursor) {
        jsonDict[@"cursor"] = valueObj.cursor;
    }

    return jsonDict;
}

+ (DbxTeamListTeamAppsResult *)deserialize:(NSDictionary *)valueDict {
    NSArray<DbxTeamMemberLinkedApps *> *apps = [DbxArraySerializer deserialize:valueDict[@"apps"] withBlock:^id(id elem) { return [DbxTeamMemberLinkedAppsSerializer deserialize:elem]; }];
    NSNumber *hasMore = valueDict[@"has_more"];
    NSString *cursor = valueDict[@"cursor"] ? valueDict[@"cursor"] : nil;

    return [[DbxTeamListTeamAppsResult alloc] initWithApps:apps hasMore:hasMore cursor:cursor];
}

@end