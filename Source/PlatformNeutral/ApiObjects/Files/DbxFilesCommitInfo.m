///
/// Auto-generated by Stone, do not modify.
///

#import "DbxFilesCommitInfo.h"
#import "DbxFilesWriteMode.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxFilesCommitInfo 

- (instancetype)initWithPath:(NSString *)path mode:(DbxFilesWriteMode *)mode autorename:(NSNumber *)autorename clientModified:(NSDate *)clientModified mute:(NSNumber *)mute {
    [DbxStoneValidators stringValidator:nil maxLength:nil pattern:@"(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)"](path);

    self = [super init];
    if (self != nil) {
        _path = path;
        _mode = mode ?: [[DbxFilesWriteMode alloc] initWithAdd];
        _autorename = autorename ?: @NO;
        _clientModified = clientModified;
        _mute = mute ?: @NO;
    }
    return self;
}

- (instancetype)initWithPath:(NSString *)path {
    return [self initWithPath:path mode:nil autorename:nil clientModified:nil mute:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxFilesCommitInfoSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxFilesCommitInfoSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxFilesCommitInfoSerializer serialize:self] description];
}

@end


@implementation DbxFilesCommitInfoSerializer 

+ (NSDictionary *)serialize:(DbxFilesCommitInfo *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"path"] = valueObj.path;
    jsonDict[@"mode"] = [DbxFilesWriteModeSerializer serialize:valueObj.mode];
    jsonDict[@"autorename"] = valueObj.autorename;
    if (valueObj.clientModified) {
        jsonDict[@"client_modified"] = [DbxNSDateSerializer serialize:valueObj.clientModified dateFormat:@"%Y-%m-%dT%H:%M:%SZ"];
    }
    jsonDict[@"mute"] = valueObj.mute;

    return jsonDict;
}

+ (DbxFilesCommitInfo *)deserialize:(NSDictionary *)valueDict {
    NSString *path = valueDict[@"path"];
    DbxFilesWriteMode *mode = [DbxFilesWriteModeSerializer deserialize:valueDict[@"mode"]];
    NSNumber *autorename = valueDict[@"autorename"];
    NSDate *clientModified = valueDict[@"client_modified"] ? [DbxNSDateSerializer deserialize:valueDict[@"client_modified"] dateFormat:@"%Y-%m-%dT%H:%M:%SZ"] : nil;
    NSNumber *mute = valueDict[@"mute"];

    return [[DbxFilesCommitInfo alloc] initWithPath:path mode:mode autorename:autorename clientModified:clientModified mute:mute];
}

@end