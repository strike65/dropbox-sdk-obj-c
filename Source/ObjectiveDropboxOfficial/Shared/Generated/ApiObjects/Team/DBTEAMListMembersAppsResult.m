///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMListMembersAppsResult.h"
#import "DBTEAMMemberLinkedApps.h"

#pragma mark - API Object

@implementation DBTEAMListMembersAppsResult

#pragma mark - Constructors

- (instancetype)initWithApps:(NSArray<DBTEAMMemberLinkedApps *> *)apps
                     hasMore:(NSNumber *)hasMore
                      cursor:(NSString *)cursor {
  [DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](apps);

  self = [super init];
  if (self) {
    _apps = apps;
    _hasMore = hasMore;
    _cursor = cursor;
  }
  return self;
}

- (instancetype)initWithApps:(NSArray<DBTEAMMemberLinkedApps *> *)apps hasMore:(NSNumber *)hasMore {
  return [self initWithApps:apps hasMore:hasMore cursor:nil];
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMListMembersAppsResultSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMListMembersAppsResultSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMListMembersAppsResultSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMListMembersAppsResultSerializer

+ (NSDictionary *)serialize:(DBTEAMListMembersAppsResult *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"apps"] = [DBArraySerializer serialize:valueObj.apps
                                         withBlock:^id(id elem) {
                                           return [DBTEAMMemberLinkedAppsSerializer serialize:elem];
                                         }];
  jsonDict[@"has_more"] = valueObj.hasMore;
  if (valueObj.cursor) {
    jsonDict[@"cursor"] = valueObj.cursor;
  }

  return jsonDict;
}

+ (DBTEAMListMembersAppsResult *)deserialize:(NSDictionary *)valueDict {
  NSArray<DBTEAMMemberLinkedApps *> *apps =
      [DBArraySerializer deserialize:valueDict[@"apps"]
                           withBlock:^id(id elem) {
                             return [DBTEAMMemberLinkedAppsSerializer deserialize:elem];
                           }];
  NSNumber *hasMore = valueDict[@"has_more"];
  NSString *cursor = valueDict[@"cursor"] ?: nil;

  return [[DBTEAMListMembersAppsResult alloc] initWithApps:apps hasMore:hasMore cursor:cursor];
}

@end
