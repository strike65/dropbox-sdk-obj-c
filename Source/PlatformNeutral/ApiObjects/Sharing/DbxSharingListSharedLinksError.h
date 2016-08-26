///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxFilesLookupError;
@class DbxSharingListSharedLinksError;

/// 
/// The `DbxSharingListSharedLinksError` union.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DbxSharingListSharedLinksError : NSObject <DbxSerializable> 

/// The `SharingListSharedLinksErrorTag` enum type represents the possible tag
/// states that the `DbxSharingListSharedLinksError` union can exist in.
typedef NS_ENUM(NSInteger, SharingListSharedLinksErrorTag) {
    /// (no description).
    SharingListSharedLinksErrorPath,

    /// Indicates that the cursor has been invalidated. Call listSharedLinks to
    /// obtain a new cursor.
    SharingListSharedLinksErrorReset,

    /// (no description).
    SharingListSharedLinksErrorOther,

};

/// Represents the union's current tag state.
@property (nonatomic) SharingListSharedLinksErrorTag tag;

/// (no description).
@property (nonatomic) DbxFilesLookupError * _Nonnull path;


/// Initializes union class with tag state of `Path`.
- (nonnull instancetype)initWithPath:(DbxFilesLookupError * _Nonnull)path;

/// Initializes union class with tag state of `Reset`.
- (nonnull instancetype)initWithReset;

/// Initializes union class with tag state of `Other`.
- (nonnull instancetype)initWithOther;

/// Returns whether the union's current tag state has value `Path`.
- (BOOL)isPath;

/// Returns whether the union's current tag state has value `Reset`.
- (BOOL)isReset;

/// Returns whether the union's current tag state has value `Other`.
- (BOOL)isOther;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the
/// `DbxSharingListSharedLinksError` object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxSharingListSharedLinksError` union.
/// 
@interface DbxSharingListSharedLinksErrorSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxSharingListSharedLinksError` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxSharingListSharedLinksError * _Nonnull)obj;

/// Returns an instantiation of the `DbxSharingListSharedLinksError` object from
/// a json-compatible dictionary representation.
+ (DbxSharingListSharedLinksError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end