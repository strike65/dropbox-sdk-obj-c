///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxSharingSharedFolderAccessError;
@class DbxSharingTransferFolderError;

/// 
/// The `DbxSharingTransferFolderError` union.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DbxSharingTransferFolderError : NSObject <DbxSerializable> 

/// The `SharingTransferFolderErrorTag` enum type represents the possible tag
/// states that the `DbxSharingTransferFolderError` union can exist in.
typedef NS_ENUM(NSInteger, SharingTransferFolderErrorTag) {
    /// (no description).
    SharingTransferFolderErrorAccessError,

    /// toDropboxId in TransferFolderArg is invalid.
    SharingTransferFolderErrorInvalidDropboxId,

    /// The new designated owner is not currently a member of the shared folder.
    SharingTransferFolderErrorDNewOwnerNotAMember,

    /// The new designated owner has not added the folder to their Dropbox.
    SharingTransferFolderErrorDNewOwnerUnmounted,

    /// The new designated owner's e-mail address is unverified.
    SharingTransferFolderErrorDNewOwnerEmailUnverified,

    /// This action cannot be performed on a team shared folder.
    SharingTransferFolderErrorTeamFolder,

    /// The current user does not have permission to perform this action.
    SharingTransferFolderErrorNoPermission,

    /// (no description).
    SharingTransferFolderErrorOther,

};

/// Represents the union's current tag state.
@property (nonatomic) SharingTransferFolderErrorTag tag;

/// (no description).
@property (nonatomic) DbxSharingSharedFolderAccessError * _Nonnull accessError;


/// Initializes union class with tag state of `AccessError`.
- (nonnull instancetype)initWithAccessError:(DbxSharingSharedFolderAccessError * _Nonnull)accessError;

/// Initializes union class with tag state of `InvalidDropboxId`.
- (nonnull instancetype)initWithInvalidDropboxId;

/// Initializes union class with tag state of `DNewOwnerNotAMember`.
- (nonnull instancetype)initWithDNewOwnerNotAMember;

/// Initializes union class with tag state of `DNewOwnerUnmounted`.
- (nonnull instancetype)initWithDNewOwnerUnmounted;

/// Initializes union class with tag state of `DNewOwnerEmailUnverified`.
- (nonnull instancetype)initWithDNewOwnerEmailUnverified;

/// Initializes union class with tag state of `TeamFolder`.
- (nonnull instancetype)initWithTeamFolder;

/// Initializes union class with tag state of `NoPermission`.
- (nonnull instancetype)initWithNoPermission;

/// Initializes union class with tag state of `Other`.
- (nonnull instancetype)initWithOther;

/// Returns whether the union's current tag state has value `AccessError`.
- (BOOL)isAccessError;

/// Returns whether the union's current tag state has value `InvalidDropboxId`.
- (BOOL)isInvalidDropboxId;

/// Returns whether the union's current tag state has value
/// `DNewOwnerNotAMember`.
- (BOOL)isDNewOwnerNotAMember;

/// Returns whether the union's current tag state has value
/// `DNewOwnerUnmounted`.
- (BOOL)isDNewOwnerUnmounted;

/// Returns whether the union's current tag state has value
/// `DNewOwnerEmailUnverified`.
- (BOOL)isDNewOwnerEmailUnverified;

/// Returns whether the union's current tag state has value `TeamFolder`.
- (BOOL)isTeamFolder;

/// Returns whether the union's current tag state has value `NoPermission`.
- (BOOL)isNoPermission;

/// Returns whether the union's current tag state has value `Other`.
- (BOOL)isOther;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the
/// `DbxSharingTransferFolderError` object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxSharingTransferFolderError` union.
/// 
@interface DbxSharingTransferFolderErrorSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxSharingTransferFolderError` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxSharingTransferFolderError * _Nonnull)obj;

/// Returns an instantiation of the `DbxSharingTransferFolderError` object from
/// a json-compatible dictionary representation.
+ (DbxSharingTransferFolderError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end