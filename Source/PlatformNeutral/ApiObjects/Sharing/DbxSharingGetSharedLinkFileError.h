///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxSharingGetSharedLinkFileError;

/// 
/// The `DbxSharingGetSharedLinkFileError` union.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DbxSharingGetSharedLinkFileError : NSObject <DbxSerializable> 

/// The `SharingGetSharedLinkFileErrorTag` enum type represents the possible tag
/// states that the `DbxSharingGetSharedLinkFileError` union can exist in.
typedef NS_ENUM(NSInteger, SharingGetSharedLinkFileErrorTag) {
    /// The shared link wasn't found
    SharingGetSharedLinkFileErrorSharedLinkNotFound,

    /// The caller is not allowed to access this shared link
    SharingGetSharedLinkFileErrorSharedLinkAccessDenied,

    /// (no description).
    SharingGetSharedLinkFileErrorOther,

    /// Directories cannot be retrieved by this endpoint.
    SharingGetSharedLinkFileErrorSharedLinkIsDirectory,

};

/// Represents the union's current tag state.
@property (nonatomic) SharingGetSharedLinkFileErrorTag tag;


/// Initializes union class with tag state of `SharedLinkNotFound`.
- (nonnull instancetype)initWithSharedLinkNotFound;

/// Initializes union class with tag state of `SharedLinkAccessDenied`.
- (nonnull instancetype)initWithSharedLinkAccessDenied;

/// Initializes union class with tag state of `Other`.
- (nonnull instancetype)initWithOther;

/// Initializes union class with tag state of `SharedLinkIsDirectory`.
- (nonnull instancetype)initWithSharedLinkIsDirectory;

/// Returns whether the union's current tag state has value
/// `SharedLinkNotFound`.
- (BOOL)isSharedLinkNotFound;

/// Returns whether the union's current tag state has value
/// `SharedLinkAccessDenied`.
- (BOOL)isSharedLinkAccessDenied;

/// Returns whether the union's current tag state has value `Other`.
- (BOOL)isOther;

/// Returns whether the union's current tag state has value
/// `SharedLinkIsDirectory`.
- (BOOL)isSharedLinkIsDirectory;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the
/// `DbxSharingGetSharedLinkFileError` object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxSharingGetSharedLinkFileError` union.
/// 
@interface DbxSharingGetSharedLinkFileErrorSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxSharingGetSharedLinkFileError` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxSharingGetSharedLinkFileError * _Nonnull)obj;

/// Returns an instantiation of the `DbxSharingGetSharedLinkFileError` object
/// from a json-compatible dictionary representation.
+ (DbxSharingGetSharedLinkFileError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end