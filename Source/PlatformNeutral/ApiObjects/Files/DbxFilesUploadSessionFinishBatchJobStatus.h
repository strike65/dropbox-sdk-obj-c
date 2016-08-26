///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxFilesUploadSessionFinishBatchJobStatus;
@class DbxFilesUploadSessionFinishBatchResult;

/// 
/// The `DbxFilesUploadSessionFinishBatchJobStatus` union.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DbxFilesUploadSessionFinishBatchJobStatus : NSObject <DbxSerializable> 

/// The `FilesUploadSessionFinishBatchJobStatusTag` enum type represents the
/// possible tag states that the `DbxFilesUploadSessionFinishBatchJobStatus`
/// union can exist in.
typedef NS_ENUM(NSInteger, FilesUploadSessionFinishBatchJobStatusTag) {
    /// The asynchronous job is still in progress.
    FilesUploadSessionFinishBatchJobStatusInProgress,

    /// The uploadSessionFinishBatch has finished.
    FilesUploadSessionFinishBatchJobStatusComplete,

};

/// Represents the union's current tag state.
@property (nonatomic) FilesUploadSessionFinishBatchJobStatusTag tag;

/// The uploadSessionFinishBatch has finished.
@property (nonatomic) DbxFilesUploadSessionFinishBatchResult * _Nonnull complete;


/// Initializes union class with tag state of `InProgress`.
- (nonnull instancetype)initWithInProgress;

/// Initializes union class with tag state of `Complete`.
- (nonnull instancetype)initWithComplete:(DbxFilesUploadSessionFinishBatchResult * _Nonnull)complete;

/// Returns whether the union's current tag state has value `InProgress`.
- (BOOL)isInProgress;

/// Returns whether the union's current tag state has value `Complete`.
- (BOOL)isComplete;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the
/// `DbxFilesUploadSessionFinishBatchJobStatus` object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxFilesUploadSessionFinishBatchJobStatus`
/// union.
/// 
@interface DbxFilesUploadSessionFinishBatchJobStatusSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxFilesUploadSessionFinishBatchJobStatus` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxFilesUploadSessionFinishBatchJobStatus * _Nonnull)obj;

/// Returns an instantiation of the `DbxFilesUploadSessionFinishBatchJobStatus`
/// object from a json-compatible dictionary representation.
+ (DbxFilesUploadSessionFinishBatchJobStatus * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end