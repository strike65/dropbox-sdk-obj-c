///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxSharingFileAction;

/// 
/// The `DbxSharingFileAction` union.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
/// Sharing actions that may be taken on files.
/// 
@interface DbxSharingFileAction : NSObject <DbxSerializable> 

/// The `SharingFileActionTag` enum type represents the possible tag states that
/// the `DbxSharingFileAction` union can exist in.
typedef NS_ENUM(NSInteger, SharingFileActionTag) {
    /// Change or edit contents of the file.
    SharingFileActionEditContents,

    /// Add a member with view permissions.
    SharingFileActionInviteViewer,

    /// Add a member with view permissions but no comment permissions.
    SharingFileActionInviteViewerNoComment,

    /// Stop sharing this file.
    SharingFileActionUnshare,

    /// Relinquish one's own membership to the file.
    SharingFileActionRelinquishMembership,

    /// Create a shared link to the file.
    SharingFileActionShareLink,

    /// (no description).
    SharingFileActionOther,

};

/// Represents the union's current tag state.
@property (nonatomic) SharingFileActionTag tag;


/// Initializes union class with tag state of `EditContents`.
- (nonnull instancetype)initWithEditContents;

/// Initializes union class with tag state of `InviteViewer`.
- (nonnull instancetype)initWithInviteViewer;

/// Initializes union class with tag state of `InviteViewerNoComment`.
- (nonnull instancetype)initWithInviteViewerNoComment;

/// Initializes union class with tag state of `Unshare`.
- (nonnull instancetype)initWithUnshare;

/// Initializes union class with tag state of `RelinquishMembership`.
- (nonnull instancetype)initWithRelinquishMembership;

/// Initializes union class with tag state of `ShareLink`.
- (nonnull instancetype)initWithShareLink;

/// Initializes union class with tag state of `Other`.
- (nonnull instancetype)initWithOther;

/// Returns whether the union's current tag state has value `EditContents`.
- (BOOL)isEditContents;

/// Returns whether the union's current tag state has value `InviteViewer`.
- (BOOL)isInviteViewer;

/// Returns whether the union's current tag state has value
/// `InviteViewerNoComment`.
- (BOOL)isInviteViewerNoComment;

/// Returns whether the union's current tag state has value `Unshare`.
- (BOOL)isUnshare;

/// Returns whether the union's current tag state has value
/// `RelinquishMembership`.
- (BOOL)isRelinquishMembership;

/// Returns whether the union's current tag state has value `ShareLink`.
- (BOOL)isShareLink;

/// Returns whether the union's current tag state has value `Other`.
- (BOOL)isOther;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the `DbxSharingFileAction`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxSharingFileAction` union.
/// 
@interface DbxSharingFileActionSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxSharingFileAction` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxSharingFileAction * _Nonnull)obj;

/// Returns an instantiation of the `DbxSharingFileAction` object from a
/// json-compatible dictionary representation.
+ (DbxSharingFileAction * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end