///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxSharingAccessLevel;

/// 
/// The `DbxSharingAccessLevel` union.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
/// Defines the access levels for collaborators.
/// 
@interface DbxSharingAccessLevel : NSObject <DbxSerializable> 

/// The `SharingAccessLevelTag` enum type represents the possible tag states
/// that the `DbxSharingAccessLevel` union can exist in.
typedef NS_ENUM(NSInteger, SharingAccessLevelTag) {
    /// The collaborator is the owner of the shared folder. Owners can view and
    /// edit the shared folder as well as set the folder's policies using
    /// updateFolderPolicy.
    SharingAccessLevelOwner,

    /// The collaborator can both view and edit the shared folder.
    SharingAccessLevelEditor,

    /// The collaborator can only view the shared folder.
    SharingAccessLevelViewer,

    /// The collaborator can only view the shared folder and does not have any
    /// access to comments.
    SharingAccessLevelViewerNoComment,

    /// (no description).
    SharingAccessLevelOther,

};

/// Represents the union's current tag state.
@property (nonatomic) SharingAccessLevelTag tag;


/// Initializes union class with tag state of `Owner`.
- (nonnull instancetype)initWithOwner;

/// Initializes union class with tag state of `Editor`.
- (nonnull instancetype)initWithEditor;

/// Initializes union class with tag state of `Viewer`.
- (nonnull instancetype)initWithViewer;

/// Initializes union class with tag state of `ViewerNoComment`.
- (nonnull instancetype)initWithViewerNoComment;

/// Initializes union class with tag state of `Other`.
- (nonnull instancetype)initWithOther;

/// Returns whether the union's current tag state has value `Owner`.
- (BOOL)isOwner;

/// Returns whether the union's current tag state has value `Editor`.
- (BOOL)isEditor;

/// Returns whether the union's current tag state has value `Viewer`.
- (BOOL)isViewer;

/// Returns whether the union's current tag state has value `ViewerNoComment`.
- (BOOL)isViewerNoComment;

/// Returns whether the union's current tag state has value `Other`.
- (BOOL)isOther;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the `DbxSharingAccessLevel`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxSharingAccessLevel` union.
/// 
@interface DbxSharingAccessLevelSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxSharingAccessLevel` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxSharingAccessLevel * _Nonnull)obj;

/// Returns an instantiation of the `DbxSharingAccessLevel` object from a
/// json-compatible dictionary representation.
+ (DbxSharingAccessLevel * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end