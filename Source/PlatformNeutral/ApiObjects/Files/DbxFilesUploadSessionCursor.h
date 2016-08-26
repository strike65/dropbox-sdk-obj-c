///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxFilesUploadSessionCursor;

/// 
/// The `DbxFilesUploadSessionCursor` struct.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DbxFilesUploadSessionCursor : NSObject <DbxSerializable> 

/// The upload session ID (returned by uploadSessionStart).
@property (nonatomic, copy) NSString * _Nonnull sessionId;

/// The amount of data that has been uploaded so far. We use this to make sure
/// upload data isn't lost or duplicated in the event of a network error.
@property (nonatomic, copy) NSNumber * _Nonnull offset;

/// Full constructor for the `UploadSessionCursor` struct (exposes all instance
/// variables).
- (nonnull instancetype)initWithSessionId:(NSString * _Nonnull)sessionId offset:(NSNumber * _Nonnull)offset;

/// Returns a human-readable representation of the `DbxFilesUploadSessionCursor`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxFilesUploadSessionCursor` struct.
/// 
@interface DbxFilesUploadSessionCursorSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxFilesUploadSessionCursor` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxFilesUploadSessionCursor * _Nonnull)obj;

/// Returns an instantiation of the `DbxFilesUploadSessionCursor` object from a
/// json-compatible dictionary representation.
+ (DbxFilesUploadSessionCursor * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end