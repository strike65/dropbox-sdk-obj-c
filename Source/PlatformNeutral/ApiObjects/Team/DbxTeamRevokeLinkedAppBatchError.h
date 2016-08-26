///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxTeamRevokeLinkedAppBatchError;

/// 
/// The `DbxTeamRevokeLinkedAppBatchError` union.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
/// Error returned by linkedAppsRevokeLinkedAppBatch.
/// 
@interface DbxTeamRevokeLinkedAppBatchError : NSObject <DbxSerializable> 

/// The `TeamRevokeLinkedAppBatchErrorTag` enum type represents the possible tag
/// states that the `DbxTeamRevokeLinkedAppBatchError` union can exist in.
typedef NS_ENUM(NSInteger, TeamRevokeLinkedAppBatchErrorTag) {
    /// (no description).
    TeamRevokeLinkedAppBatchErrorOther,

};

/// Represents the union's current tag state.
@property (nonatomic) TeamRevokeLinkedAppBatchErrorTag tag;


/// Initializes union class with tag state of `Other`.
- (nonnull instancetype)initWithOther;

/// Returns whether the union's current tag state has value `Other`.
- (BOOL)isOther;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the
/// `DbxTeamRevokeLinkedAppBatchError` object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxTeamRevokeLinkedAppBatchError` union.
/// 
@interface DbxTeamRevokeLinkedAppBatchErrorSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxTeamRevokeLinkedAppBatchError` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxTeamRevokeLinkedAppBatchError * _Nonnull)obj;

/// Returns an instantiation of the `DbxTeamRevokeLinkedAppBatchError` object
/// from a json-compatible dictionary representation.
+ (DbxTeamRevokeLinkedAppBatchError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end