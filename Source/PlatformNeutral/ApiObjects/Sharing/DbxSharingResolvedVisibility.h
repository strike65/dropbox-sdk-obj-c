///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxSharingResolvedVisibility;

/// 
/// The `DbxSharingResolvedVisibility` union.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
/// The actual access permissions values of shared links after taking into
/// account user preferences and the team and shared folder settings. Check the
/// RequestedVisibility for more info on the possible visibility values that can
/// be set by the shared link's owner.
/// 
@interface DbxSharingResolvedVisibility : NSObject <DbxSerializable> 

/// The `SharingResolvedVisibilityTag` enum type represents the possible tag
/// states that the `DbxSharingResolvedVisibility` union can exist in.
typedef NS_ENUM(NSInteger, SharingResolvedVisibilityTag) {
    /// Anyone who has received the link can access it. No login required.
    SharingResolvedVisibilityPublic,

    /// Only members of the same team can access the link. Login is required.
    SharingResolvedVisibilityTeamOnly,

    /// A link-specific password is required to access the link. Login is not
    /// required.
    SharingResolvedVisibilityPassword,

    /// Only members of the same team who have the link-specific password can
    /// access the link. Login is required.
    SharingResolvedVisibilityTeamAndPassword,

    /// Only members of the shared folder containing the linked file can access
    /// the link. Login is required.
    SharingResolvedVisibilitySharedFolderOnly,

    /// (no description).
    SharingResolvedVisibilityOther,

};

/// Represents the union's current tag state.
@property (nonatomic) SharingResolvedVisibilityTag tag;


/// Initializes union class with tag state of `Public`.
- (nonnull instancetype)initWithPublic;

/// Initializes union class with tag state of `TeamOnly`.
- (nonnull instancetype)initWithTeamOnly;

/// Initializes union class with tag state of `Password`.
- (nonnull instancetype)initWithPassword;

/// Initializes union class with tag state of `TeamAndPassword`.
- (nonnull instancetype)initWithTeamAndPassword;

/// Initializes union class with tag state of `SharedFolderOnly`.
- (nonnull instancetype)initWithSharedFolderOnly;

/// Initializes union class with tag state of `Other`.
- (nonnull instancetype)initWithOther;

/// Returns whether the union's current tag state has value `Public`.
- (BOOL)isPublic;

/// Returns whether the union's current tag state has value `TeamOnly`.
- (BOOL)isTeamOnly;

/// Returns whether the union's current tag state has value `Password`.
- (BOOL)isPassword;

/// Returns whether the union's current tag state has value `TeamAndPassword`.
- (BOOL)isTeamAndPassword;

/// Returns whether the union's current tag state has value `SharedFolderOnly`.
- (BOOL)isSharedFolderOnly;

/// Returns whether the union's current tag state has value `Other`.
- (BOOL)isOther;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the
/// `DbxSharingResolvedVisibility` object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxSharingResolvedVisibility` union.
/// 
@interface DbxSharingResolvedVisibilitySerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxSharingResolvedVisibility` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxSharingResolvedVisibility * _Nonnull)obj;

/// Returns an instantiation of the `DbxSharingResolvedVisibility` object from a
/// json-compatible dictionary representation.
+ (DbxSharingResolvedVisibility * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end