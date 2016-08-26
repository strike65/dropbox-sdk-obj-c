///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingFolderAction.h"
#import "DbxSharingGetMetadataArgs.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingGetMetadataArgs 

- (instancetype)initWithSharedFolderId:(NSString *)sharedFolderId actions:(NSArray<DbxSharingFolderAction *> *)actions {
    [DbxStoneValidators stringValidator:nil maxLength:nil pattern:@"[-_0-9a-zA-Z:]+"](sharedFolderId);
    [DbxStoneValidators nullableValidator:[DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil]](actions);

    self = [super init];
    if (self != nil) {
        _sharedFolderId = sharedFolderId;
        _actions = actions;
    }
    return self;
}

- (instancetype)initWithSharedFolderId:(NSString *)sharedFolderId {
    return [self initWithSharedFolderId:sharedFolderId actions:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingGetMetadataArgsSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingGetMetadataArgsSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingGetMetadataArgsSerializer serialize:self] description];
}

@end


@implementation DbxSharingGetMetadataArgsSerializer 

+ (NSDictionary *)serialize:(DbxSharingGetMetadataArgs *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"shared_folder_id"] = valueObj.sharedFolderId;
    if (valueObj.actions) {
        jsonDict[@"actions"] = [DbxArraySerializer serialize:valueObj.actions withBlock:^id(id elem) { return [DbxSharingFolderActionSerializer serialize:elem]; }];
    }

    return jsonDict;
}

+ (DbxSharingGetMetadataArgs *)deserialize:(NSDictionary *)valueDict {
    NSString *sharedFolderId = valueDict[@"shared_folder_id"];
    NSArray<DbxSharingFolderAction *> *actions = valueDict[@"actions"] ? [DbxArraySerializer deserialize:valueDict[@"actions"] withBlock:^id(id elem) { return [DbxSharingFolderActionSerializer deserialize:elem]; }] : nil;

    return [[DbxSharingGetMetadataArgs alloc] initWithSharedFolderId:sharedFolderId actions:actions];
}

@end