///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxFilesLookupError;
@class DbxFilesSearchError;

/// 
/// The `DbxFilesSearchError` union.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DbxFilesSearchError : NSObject <DbxSerializable> 

/// The `FilesSearchErrorTag` enum type represents the possible tag states that
/// the `DbxFilesSearchError` union can exist in.
typedef NS_ENUM(NSInteger, FilesSearchErrorTag) {
    /// (no description).
    FilesSearchErrorPath,

    /// (no description).
    FilesSearchErrorOther,

};

/// Represents the union's current tag state.
@property (nonatomic) FilesSearchErrorTag tag;

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

/// Returns a human-readable representation of the `DbxFilesSearchError` object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxFilesSearchError` union.
/// 
@interface DbxFilesSearchErrorSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxFilesSearchError` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxFilesSearchError * _Nonnull)obj;

/// Returns an instantiation of the `DbxFilesSearchError` object from a
/// json-compatible dictionary representation.
+ (DbxFilesSearchError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end