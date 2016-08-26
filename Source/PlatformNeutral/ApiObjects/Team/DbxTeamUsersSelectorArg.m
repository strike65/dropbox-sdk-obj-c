///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamUsersSelectorArg.h"

@implementation DbxTeamUsersSelectorArg 

- (instancetype)initWithTeamMemberIds:(NSArray<NSString *> *)teamMemberIds {
    self = [super init];
    if (self != nil) {
        _tag = TeamUsersSelectorArgTeamMemberIds;
        _teamMemberIds = teamMemberIds;
    }
    return self;
}

- (instancetype)initWithExternalIds:(NSArray<NSString *> *)externalIds {
    self = [super init];
    if (self != nil) {
        _tag = TeamUsersSelectorArgExternalIds;
        _externalIds = externalIds;
    }
    return self;
}

- (instancetype)initWithEmails:(NSArray<NSString *> *)emails {
    self = [super init];
    if (self != nil) {
        _tag = TeamUsersSelectorArgEmails;
        _emails = emails;
    }
    return self;
}

- (BOOL)isTeamMemberIds {
    return _tag == TeamUsersSelectorArgTeamMemberIds;
}

- (BOOL)isExternalIds {
    return _tag == TeamUsersSelectorArgExternalIds;
}

- (BOOL)isEmails {
    return _tag == TeamUsersSelectorArgEmails;
}

- (NSString *)getTagName {
    switch (_tag) {
        case TeamUsersSelectorArgTeamMemberIds:
           return @"TeamUsersSelectorArgTeamMemberIds";
        case TeamUsersSelectorArgExternalIds:
           return @"TeamUsersSelectorArgExternalIds";
        case TeamUsersSelectorArgEmails:
           return @"TeamUsersSelectorArgEmails";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (NSArray<NSString *> *)teamMemberIds {
    if (_tag != TeamUsersSelectorArgTeamMemberIds) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required TeamUsersSelectorArgTeamMemberIds, but was %@.", [self getTagName]];
    }
    return _teamMemberIds;
}

- (NSArray<NSString *> *)externalIds {
    if (_tag != TeamUsersSelectorArgExternalIds) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required TeamUsersSelectorArgExternalIds, but was %@.", [self getTagName]];
    }
    return _externalIds;
}

- (NSArray<NSString *> *)emails {
    if (_tag != TeamUsersSelectorArgEmails) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required TeamUsersSelectorArgEmails, but was %@.", [self getTagName]];
    }
    return _emails;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamUsersSelectorArgSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamUsersSelectorArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamUsersSelectorArgSerializer serialize:self] description];
}

@end


@implementation DbxTeamUsersSelectorArgSerializer 

+ (NSDictionary *)serialize:(DbxTeamUsersSelectorArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isTeamMemberIds]) {
        jsonDict[@"team_member_ids"] = [DbxArraySerializer serialize:valueObj.teamMemberIds withBlock:^id(id elem) { return elem; }];
        jsonDict[@".tag"] = @"team_member_ids";
    }
    else if ([valueObj isExternalIds]) {
        jsonDict[@"external_ids"] = [DbxArraySerializer serialize:valueObj.externalIds withBlock:^id(id elem) { return elem; }];
        jsonDict[@".tag"] = @"external_ids";
    }
    else if ([valueObj isEmails]) {
        jsonDict[@"emails"] = [DbxArraySerializer serialize:valueObj.emails withBlock:^id(id elem) { return elem; }];
        jsonDict[@".tag"] = @"emails";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxTeamUsersSelectorArg *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"team_member_ids"]) {
        NSArray<NSString *> *teamMemberIds = [DbxArraySerializer deserialize:valueDict[@"team_member_ids"] withBlock:^id(id elem) { return elem; }];
        return [[DbxTeamUsersSelectorArg alloc] initWithTeamMemberIds:teamMemberIds];
    }
    if ([tag isEqualToString:@"external_ids"]) {
        NSArray<NSString *> *externalIds = [DbxArraySerializer deserialize:valueDict[@"external_ids"] withBlock:^id(id elem) { return elem; }];
        return [[DbxTeamUsersSelectorArg alloc] initWithExternalIds:externalIds];
    }
    if ([tag isEqualToString:@"emails"]) {
        NSArray<NSString *> *emails = [DbxArraySerializer deserialize:valueDict[@"emails"] withBlock:^id(id elem) { return elem; }];
        return [[DbxTeamUsersSelectorArg alloc] initWithEmails:emails];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end