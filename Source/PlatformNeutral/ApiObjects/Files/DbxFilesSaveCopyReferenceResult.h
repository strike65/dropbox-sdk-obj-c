///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxFilesMetadata;
@class DbxFilesSaveCopyReferenceResult;

/// 
/// The `DbxFilesSaveCopyReferenceResult` struct.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DbxFilesSaveCopyReferenceResult : NSObject <DbxSerializable> 

/// The metadata of the saved file or folder in the user's Dropbox.
@property (nonatomic) DbxFilesMetadata * _Nonnull metadata;

/// Full constructor for the `SaveCopyReferenceResult` struct (exposes all
/// instance variables).
- (nonnull instancetype)initWithMetadata:(DbxFilesMetadata * _Nonnull)metadata;

/// Returns a human-readable representation of the
/// `DbxFilesSaveCopyReferenceResult` object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxFilesSaveCopyReferenceResult` struct.
/// 
@interface DbxFilesSaveCopyReferenceResultSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxFilesSaveCopyReferenceResult` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxFilesSaveCopyReferenceResult * _Nonnull)obj;

/// Returns an instantiation of the `DbxFilesSaveCopyReferenceResult` object
/// from a json-compatible dictionary representation.
+ (DbxFilesSaveCopyReferenceResult * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end