///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxAsyncLaunchEmptyResult;

/// 
/// The `DbxAsyncLaunchEmptyResult` union.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
/// Result returned by methods that may either launch an asynchronous job or
/// complete synchronously. Upon synchronous completion of the job, no
/// additional information is returned.
/// 
@interface DbxAsyncLaunchEmptyResult : NSObject <DbxSerializable> 

/// The `AsyncLaunchEmptyResultTag` enum type represents the possible tag states
/// that the `DbxAsyncLaunchEmptyResult` union can exist in.
typedef NS_ENUM(NSInteger, AsyncLaunchEmptyResultTag) {
    /// This response indicates that the processing is asynchronous. The string
    /// is an id that can be used to obtain the status of the asynchronous job.
    AsyncLaunchEmptyResultAsyncJobId,

    /// The job finished synchronously and successfully.
    AsyncLaunchEmptyResultComplete,

};

/// Represents the union's current tag state.
@property (nonatomic) AsyncLaunchEmptyResultTag tag;

/// This response indicates that the processing is asynchronous. The string is
/// an id that can be used to obtain the status of the asynchronous job.
@property (nonatomic, copy) NSString * _Nonnull asyncJobId;


/// Initializes union class with tag state of `AsyncJobId`.
- (nonnull instancetype)initWithAsyncJobId:(NSString * _Nonnull)asyncJobId;

/// Initializes union class with tag state of `Complete`.
- (nonnull instancetype)initWithComplete;

/// Returns whether the union's current tag state has value `AsyncJobId`.
- (BOOL)isAsyncJobId;

/// Returns whether the union's current tag state has value `Complete`.
- (BOOL)isComplete;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the `DbxAsyncLaunchEmptyResult`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxAsyncLaunchEmptyResult` union.
/// 
@interface DbxAsyncLaunchEmptyResultSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxAsyncLaunchEmptyResult` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxAsyncLaunchEmptyResult * _Nonnull)obj;

/// Returns an instantiation of the `DbxAsyncLaunchEmptyResult` object from a
/// json-compatible dictionary representation.
+ (DbxAsyncLaunchEmptyResult * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end