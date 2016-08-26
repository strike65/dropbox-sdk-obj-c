///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxFilesListFolderError;
@class DbxFilesLookupError;

/// 
/// The `DbxFilesListFolderError` union.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DbxFilesListFolderError : NSObject <DbxSerializable> 

/// The `FilesListFolderErrorTag` enum type represents the possible tag states
/// that the `DbxFilesListFolderError` union can exist in.
typedef NS_ENUM(NSInteger, FilesListFolderErrorTag) {
    /// (no description).
    FilesListFolderErrorPath,

    /// (no description).
    FilesListFolderErrorOther,

};

/// Represents the union's current tag state.
@property (nonatomic) FilesListFolderErrorTag tag;

/// (no description).
@property (nonatomic) DbxFilesLookupError * _Nonnull path;


/// Initializes union class with tag state of `Path`.
- (nonnull instancetype)initWithPath:(DbxFilesLookupError * _Nonnull)path;

/// Initializes union class with tag state of `Other`.
- (nonnull instancetype)initWithOther;

/// Returns whether the union's current tag state has value `Path`.
- (BOOL)isPath;

/// Returns whether the union's current tag state has value `Other`.
- (BOOL)isOther;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the `DbxFilesListFolderError`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxFilesListFolderError` union.
/// 
@interface DbxFilesListFolderErrorSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxFilesListFolderError` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxFilesListFolderError * _Nonnull)obj;

/// Returns an instantiation of the `DbxFilesListFolderError` object from a
/// json-compatible dictionary representation.
+ (DbxFilesListFolderError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end