///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxTeamAdminTier;
@class DbxTeamMembersSetPermissionsResult;

/// 
/// The `DbxTeamMembersSetPermissionsResult` struct.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DbxTeamMembersSetPermissionsResult : NSObject <DbxSerializable> 

/// The member ID of the user to which the change was applied.
@property (nonatomic, copy) NSString * _Nonnull teamMemberId;

/// The role after the change.
@property (nonatomic) DbxTeamAdminTier * _Nonnull role;

/// Full constructor for the `MembersSetPermissionsResult` struct (exposes all
/// instance variables).
- (nonnull instancetype)initWithTeamMemberId:(NSString * _Nonnull)teamMemberId role:(DbxTeamAdminTier * _Nonnull)role;

/// Returns a human-readable representation of the
/// `DbxTeamMembersSetPermissionsResult` object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxTeamMembersSetPermissionsResult` struct.
/// 
@interface DbxTeamMembersSetPermissionsResultSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxTeamMembersSetPermissionsResult` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxTeamMembersSetPermissionsResult * _Nonnull)obj;

/// Returns an instantiation of the `DbxTeamMembersSetPermissionsResult` object
/// from a json-compatible dictionary representation.
+ (DbxTeamMembersSetPermissionsResult * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end