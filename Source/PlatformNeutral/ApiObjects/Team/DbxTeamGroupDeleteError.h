///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxTeamGroupDeleteError;

/// 
/// The `DbxTeamGroupDeleteError` union.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DbxTeamGroupDeleteError : NSObject <DbxSerializable> 

/// The `TeamGroupDeleteErrorTag` enum type represents the possible tag states
/// that the `DbxTeamGroupDeleteError` union can exist in.
typedef NS_ENUM(NSInteger, TeamGroupDeleteErrorTag) {
    /// No matching group found. No groups match the specified group ID.
    TeamGroupDeleteErrorGroupNotFound,

    /// (no description).
    TeamGroupDeleteErrorOther,

    /// This group has already been deleted.
    TeamGroupDeleteErrorGroupAlreadyDeleted,

};

/// Represents the union's current tag state.
@property (nonatomic) TeamGroupDeleteErrorTag tag;


/// Initializes union class with tag state of `GroupNotFound`.
- (nonnull instancetype)initWithGroupNotFound;

/// Initializes union class with tag state of `Other`.
- (nonnull instancetype)initWithOther;

/// Initializes union class with tag state of `GroupAlreadyDeleted`.
- (nonnull instancetype)initWithGroupAlreadyDeleted;

/// Returns whether the union's current tag state has value `GroupNotFound`.
- (BOOL)isGroupNotFound;

/// Returns whether the union's current tag state has value `Other`.
- (BOOL)isOther;

/// Returns whether the union's current tag state has value
/// `GroupAlreadyDeleted`.
- (BOOL)isGroupAlreadyDeleted;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the `DbxTeamGroupDeleteError`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxTeamGroupDeleteError` union.
/// 
@interface DbxTeamGroupDeleteErrorSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxTeamGroupDeleteError` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxTeamGroupDeleteError * _Nonnull)obj;

/// Returns an instantiation of the `DbxTeamGroupDeleteError` object from a
/// json-compatible dictionary representation.
+ (DbxTeamGroupDeleteError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end