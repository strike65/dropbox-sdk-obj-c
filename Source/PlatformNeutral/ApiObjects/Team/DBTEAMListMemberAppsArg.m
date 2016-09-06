///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"
#import "DBTEAMListMemberAppsArg.h"

#pragma mark - API Object

@implementation DBTEAMListMemberAppsArg

#pragma mark - Constructors

- (instancetype)initWithTeamMemberId:(NSString *)teamMemberId {

  self = [super init];
  if (self) {
    _teamMemberId = teamMemberId;
  }
  return self;
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBTEAMListMemberAppsArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBTEAMListMemberAppsArgSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBTEAMListMemberAppsArgSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBTEAMListMemberAppsArgSerializer

+ (NSDictionary *)serialize:(DBTEAMListMemberAppsArg *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"team_member_id"] = valueObj.teamMemberId;

  return jsonDict;
}

+ (DBTEAMListMemberAppsArg *)deserialize:(NSDictionary *)valueDict {
  NSString *teamMemberId = valueDict[@"team_member_id"];

  return [[DBTEAMListMemberAppsArg alloc] initWithTeamMemberId:teamMemberId];
}

@end