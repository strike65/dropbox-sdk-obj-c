///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxSharingMemberAction;
@class DbxSharingMemberPermission;
@class DbxSharingPermissionDeniedReason;

/// 
/// The `DbxSharingMemberPermission` struct.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
/// Whether the user is allowed to take the action on the associated member.
/// 
@interface DbxSharingMemberPermission : NSObject <DbxSerializable> 

/// The action that the user may wish to take on the member.
@property (nonatomic) DbxSharingMemberAction * _Nonnull action;

/// True if the user is allowed to take the action.
@property (nonatomic, copy) NSNumber * _Nonnull allow;

/// The reason why the user is denied the permission. Not present if the action
/// is allowed
@property (nonatomic) DbxSharingPermissionDeniedReason * _Nullable reason;

/// Full constructor for the `MemberPermission` struct (exposes all instance
/// variables).
- (nonnull instancetype)initWithAction:(DbxSharingMemberAction * _Nonnull)action allow:(NSNumber * _Nonnull)allow reason:(DbxSharingPermissionDeniedReason * _Nullable)reason;

/// Convenience constructor for the `MemberPermission` struct (exposes only
/// non-nullable instance variables with no default value).
- (nonnull instancetype)initWithAction:(DbxSharingMemberAction * _Nonnull)action allow:(NSNumber * _Nonnull)allow;

/// Returns a human-readable representation of the `DbxSharingMemberPermission`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxSharingMemberPermission` struct.
/// 
@interface DbxSharingMemberPermissionSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxSharingMemberPermission` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxSharingMemberPermission * _Nonnull)obj;

/// Returns an instantiation of the `DbxSharingMemberPermission` object from a
/// json-compatible dictionary representation.
+ (DbxSharingMemberPermission * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end