///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxSharingInsufficientQuotaAmounts;
@class DbxSharingMountFolderError;
@class DbxSharingSharedFolderAccessError;

/// 
/// The `DbxSharingMountFolderError` union.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DbxSharingMountFolderError : NSObject <DbxSerializable> 

/// The `SharingMountFolderErrorTag` enum type represents the possible tag
/// states that the `DbxSharingMountFolderError` union can exist in.
typedef NS_ENUM(NSInteger, SharingMountFolderErrorTag) {
    /// (no description).
    SharingMountFolderErrorAccessError,

    /// Mounting would cause a shared folder to be inside another, which is
    /// disallowed.
    SharingMountFolderErrorInsideSharedFolder,

    /// The current user does not have enough space to mount the shared folder.
    SharingMountFolderErrorInsufficientQuota,

    /// The shared folder is already mounted.
    SharingMountFolderErrorAlreadyMounted,

    /// The current user does not have permission to perform this action.
    SharingMountFolderErrorNoPermission,

    /// The shared folder is not mountable. One example where this can occur is
    /// when the shared folder belongs within a team folder in the user's
    /// Dropbox.
    SharingMountFolderErrorNotMountable,

    /// (no description).
    SharingMountFolderErrorOther,

};

/// Represents the union's current tag state.
@property (nonatomic) SharingMountFolderErrorTag tag;

/// (no description).
@property (nonatomic) DbxSharingSharedFolderAccessError * _Nonnull accessError;

/// The current user does not have enough space to mount the shared folder.
@property (nonatomic) DbxSharingInsufficientQuotaAmounts * _Nonnull insufficientQuota;


/// Initializes union class with tag state of `AccessError`.
- (nonnull instancetype)initWithAccessError:(DbxSharingSharedFolderAccessError * _Nonnull)accessError;

/// Initializes union class with tag state of `InsideSharedFolder`.
- (nonnull instancetype)initWithInsideSharedFolder;

/// Initializes union class with tag state of `InsufficientQuota`.
- (nonnull instancetype)initWithInsufficientQuota:(DbxSharingInsufficientQuotaAmounts * _Nonnull)insufficientQuota;

/// Initializes union class with tag state of `AlreadyMounted`.
- (nonnull instancetype)initWithAlreadyMounted;

/// Initializes union class with tag state of `NoPermission`.
- (nonnull instancetype)initWithNoPermission;

/// Initializes union class with tag state of `NotMountable`.
- (nonnull instancetype)initWithNotMountable;

/// Initializes union class with tag state of `Other`.
- (nonnull instancetype)initWithOther;

/// Returns whether the union's current tag state has value `AccessError`.
- (BOOL)isAccessError;

/// Returns whether the union's current tag state has value
/// `InsideSharedFolder`.
- (BOOL)isInsideSharedFolder;

/// Returns whether the union's current tag state has value `InsufficientQuota`.
- (BOOL)isInsufficientQuota;

/// Returns whether the union's current tag state has value `AlreadyMounted`.
- (BOOL)isAlreadyMounted;

/// Returns whether the union's current tag state has value `NoPermission`.
- (BOOL)isNoPermission;

/// Returns whether the union's current tag state has value `NotMountable`.
- (BOOL)isNotMountable;

/// Returns whether the union's current tag state has value `Other`.
- (BOOL)isOther;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the `DbxSharingMountFolderError`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxSharingMountFolderError` union.
/// 
@interface DbxSharingMountFolderErrorSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxSharingMountFolderError` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxSharingMountFolderError * _Nonnull)obj;

/// Returns an instantiation of the `DbxSharingMountFolderError` object from a
/// json-compatible dictionary representation.
+ (DbxSharingMountFolderError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end