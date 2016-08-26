///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxTeamListMembersAppsArg;

/// 
/// The `DbxTeamListMembersAppsArg` struct.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
/// Arguments for linkedAppsListMembersLinkedApps.
/// 
@interface DbxTeamListMembersAppsArg : NSObject <DbxSerializable> 

/// At the first call to the linkedAppsListMembersLinkedApps the cursor
/// shouldn't be passed. Then, if the result of the call includes a cursor, the
/// following requests should include the received cursors in order to receive
/// the next sub list of the team applications
@property (nonatomic, copy) NSString * _Nullable cursor;

/// Full constructor for the `ListMembersAppsArg` struct (exposes all instance
/// variables).
- (nonnull instancetype)initWithCursor:(NSString * _Nullable)cursor;

/// Convenience constructor for the `ListMembersAppsArg` struct (exposes only
/// non-nullable instance variables with no default value).
- (nonnull instancetype)init;

/// Returns a human-readable representation of the `DbxTeamListMembersAppsArg`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxTeamListMembersAppsArg` struct.
/// 
@interface DbxTeamListMembersAppsArgSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxTeamListMembersAppsArg` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxTeamListMembersAppsArg * _Nonnull)obj;

/// Returns an instantiation of the `DbxTeamListMembersAppsArg` object from a
/// json-compatible dictionary representation.
+ (DbxTeamListMembersAppsArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end