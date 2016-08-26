///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxAsyncPollEmptyResult;

/// 
/// The `DbxAsyncPollEmptyResult` union.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
/// Result returned by methods that poll for the status of an asynchronous job.
/// Upon completion of the job, no additional information is returned.
/// 
@interface DbxAsyncPollEmptyResult : NSObject <DbxSerializable> 

/// The `AsyncPollEmptyResultTag` enum type represents the possible tag states
/// that the `DbxAsyncPollEmptyResult` union can exist in.
typedef NS_ENUM(NSInteger, AsyncPollEmptyResultTag) {
    /// The asynchronous job is still in progress.
    AsyncPollEmptyResultInProgress,

    /// The asynchronous job has completed successfully.
    AsyncPollEmptyResultComplete,

};

/// Represents the union's current tag state.
@property (nonatomic) AsyncPollEmptyResultTag tag;


/// Initializes union class with tag state of `InProgress`.
- (nonnull instancetype)initWithInProgress;

/// Initializes union class with tag state of `Complete`.
- (nonnull instancetype)initWithComplete;

/// Returns whether the union's current tag state has value `InProgress`.
- (BOOL)isInProgress;

/// Returns whether the union's current tag state has value `Complete`.
- (BOOL)isComplete;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the `DbxAsyncPollEmptyResult`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxAsyncPollEmptyResult` union.
/// 
@interface DbxAsyncPollEmptyResultSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxAsyncPollEmptyResult` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxAsyncPollEmptyResult * _Nonnull)obj;

/// Returns an instantiation of the `DbxAsyncPollEmptyResult` object from a
/// json-compatible dictionary representation.
+ (DbxAsyncPollEmptyResult * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end