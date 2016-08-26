///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxFilesWriteConflictError;
@class DbxFilesWriteError;

/// 
/// The `DbxFilesWriteError` union.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DbxFilesWriteError : NSObject <DbxSerializable> 

/// The `FilesWriteErrorTag` enum type represents the possible tag states that
/// the `DbxFilesWriteError` union can exist in.
typedef NS_ENUM(NSInteger, FilesWriteErrorTag) {
    /// (no description).
    FilesWriteErrorMalformedPath,

    /// Couldn't write to the target path because there was something in the
    /// way.
    FilesWriteErrorConflict,

    /// The user doesn't have permissions to write to the target location.
    FilesWriteErrorNoWritePermission,

    /// The user doesn't have enough available space (bytes) to write more data.
    FilesWriteErrorInsufficientSpace,

    /// Dropbox will not save the file or folder because of its name.
    FilesWriteErrorDisallowedName,

    /// (no description).
    FilesWriteErrorOther,

};

/// Represents the union's current tag state.
@property (nonatomic) FilesWriteErrorTag tag;

/// (no description).
@property (nonatomic, copy) NSString * _Nullable malformedPath;

/// Couldn't write to the target path because there was something in the way.
@property (nonatomic) DbxFilesWriteConflictError * _Nonnull conflict;


/// Initializes union class with tag state of `MalformedPath`.
- (nonnull instancetype)initWithMalformedPath:(NSString * _Nullable)malformedPath;

/// Initializes union class with tag state of `Conflict`.
- (nonnull instancetype)initWithConflict:(DbxFilesWriteConflictError * _Nonnull)conflict;

/// Initializes union class with tag state of `NoWritePermission`.
- (nonnull instancetype)initWithNoWritePermission;

/// Initializes union class with tag state of `InsufficientSpace`.
- (nonnull instancetype)initWithInsufficientSpace;

/// Initializes union class with tag state of `DisallowedName`.
- (nonnull instancetype)initWithDisallowedName;

/// Initializes union class with tag state of `Other`.
- (nonnull instancetype)initWithOther;

/// Returns whether the union's current tag state has value `MalformedPath`.
- (BOOL)isMalformedPath;

/// Returns whether the union's current tag state has value `Conflict`.
- (BOOL)isConflict;

/// Returns whether the union's current tag state has value `NoWritePermission`.
- (BOOL)isNoWritePermission;

/// Returns whether the union's current tag state has value `InsufficientSpace`.
- (BOOL)isInsufficientSpace;

/// Returns whether the union's current tag state has value `DisallowedName`.
- (BOOL)isDisallowedName;

/// Returns whether the union's current tag state has value `Other`.
- (BOOL)isOther;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the `DbxFilesWriteError` object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxFilesWriteError` union.
/// 
@interface DbxFilesWriteErrorSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxFilesWriteError` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxFilesWriteError * _Nonnull)obj;

/// Returns an instantiation of the `DbxFilesWriteError` object from a
/// json-compatible dictionary representation.
+ (DbxFilesWriteError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end