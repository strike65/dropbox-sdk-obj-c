///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxUsersAccount.h"
#import "DbxUsersName.h"

@implementation DbxUsersAccount 

- (instancetype)initWithAccountId:(NSString *)accountId name:(DbxUsersName *)name email:(NSString *)email emailVerified:(NSNumber *)emailVerified disabled:(NSNumber *)disabled profilePhotoUrl:(NSString *)profilePhotoUrl {
    [DbxStoneValidators stringValidator:[NSNumber numberWithInt:40] maxLength:[NSNumber numberWithInt:40] pattern:nil](accountId);

    self = [super init];
    if (self != nil) {
        _accountId = accountId;
        _name = name;
        _email = email;
        _emailVerified = emailVerified;
        _profilePhotoUrl = profilePhotoUrl;
        _disabled = disabled;
    }
    return self;
}

- (instancetype)initWithAccountId:(NSString *)accountId name:(DbxUsersName *)name email:(NSString *)email emailVerified:(NSNumber *)emailVerified disabled:(NSNumber *)disabled {
    return [self initWithAccountId:accountId name:name email:email emailVerified:emailVerified disabled:disabled profilePhotoUrl:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxUsersAccountSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxUsersAccountSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxUsersAccountSerializer serialize:self] description];
}

@end


@implementation DbxUsersAccountSerializer 

+ (NSDictionary *)serialize:(DbxUsersAccount *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"account_id"] = valueObj.accountId;
    jsonDict[@"name"] = [DbxUsersNameSerializer serialize:valueObj.name];
    jsonDict[@"email"] = valueObj.email;
    jsonDict[@"email_verified"] = valueObj.emailVerified;
    jsonDict[@"disabled"] = valueObj.disabled;
    if (valueObj.profilePhotoUrl) {
        jsonDict[@"profile_photo_url"] = valueObj.profilePhotoUrl;
    }

    return jsonDict;
}

+ (DbxUsersAccount *)deserialize:(NSDictionary *)valueDict {
    NSString *accountId = valueDict[@"account_id"];
    DbxUsersName *name = [DbxUsersNameSerializer deserialize:valueDict[@"name"]];
    NSString *email = valueDict[@"email"];
    NSNumber *emailVerified = valueDict[@"email_verified"];
    NSNumber *disabled = valueDict[@"disabled"];
    NSString *profilePhotoUrl = valueDict[@"profile_photo_url"] ? valueDict[@"profile_photo_url"] : nil;

    return [[DbxUsersAccount alloc] initWithAccountId:accountId name:name email:email emailVerified:emailVerified disabled:disabled profilePhotoUrl:profilePhotoUrl];
}

@end