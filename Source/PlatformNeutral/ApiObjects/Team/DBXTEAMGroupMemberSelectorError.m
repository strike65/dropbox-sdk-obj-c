///
/// Auto-generated by Stone, do not modify.
///

#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"
#import "DBXTEAMGroupMemberSelectorError.h"
#import "DBXTEAMGroupSelectorError.h"

@implementation DBXTEAMGroupMemberSelectorError 

- (instancetype)initWithGroupNotFound {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMGroupMemberSelectorErrorGroupNotFound;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMGroupMemberSelectorErrorOther;
    }
    return self;
}

- (instancetype)initWithMemberNotInGroup {
    self = [super init];
    if (self != nil) {
        _tag = DBXTEAMGroupMemberSelectorErrorMemberNotInGroup;
    }
    return self;
}

- (BOOL)isGroupNotFound {
    return _tag == DBXTEAMGroupMemberSelectorErrorGroupNotFound;
}

- (BOOL)isOther {
    return _tag == DBXTEAMGroupMemberSelectorErrorOther;
}

- (BOOL)isMemberNotInGroup {
    return _tag == DBXTEAMGroupMemberSelectorErrorMemberNotInGroup;
}

- (NSString *)getTagName {
    switch (_tag) {
        case DBXTEAMGroupMemberSelectorErrorGroupNotFound:
           return @"DBXTEAMGroupMemberSelectorErrorGroupNotFound";
        case DBXTEAMGroupMemberSelectorErrorOther:
           return @"DBXTEAMGroupMemberSelectorErrorOther";
        case DBXTEAMGroupMemberSelectorErrorMemberNotInGroup:
           return @"DBXTEAMGroupMemberSelectorErrorMemberNotInGroup";
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

+ (NSDictionary *)serialize:(id)obj {
    return [DBXTEAMGroupMemberSelectorErrorSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXTEAMGroupMemberSelectorErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXTEAMGroupMemberSelectorErrorSerializer serialize:self] description];
}

@end


@implementation DBXTEAMGroupMemberSelectorErrorSerializer 

+ (NSDictionary *)serialize:(DBXTEAMGroupMemberSelectorError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isGroupNotFound]) {
        jsonDict[@".tag"] = @"group_not_found";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else if ([valueObj isMemberNotInGroup]) {
        jsonDict[@".tag"] = @"member_not_in_group";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DBXTEAMGroupMemberSelectorError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"group_not_found"]) {
        return [[DBXTEAMGroupMemberSelectorError alloc] initWithGroupNotFound];
    }
    else if ([tag isEqualToString:@"other"]) {
        return [[DBXTEAMGroupMemberSelectorError alloc] initWithOther];
    }
    else if ([tag isEqualToString:@"member_not_in_group"]) {
        return [[DBXTEAMGroupMemberSelectorError alloc] initWithMemberNotInGroup];
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end