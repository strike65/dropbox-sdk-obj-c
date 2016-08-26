///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxTeamMembersListContinueError;

/// 
/// The `DbxTeamMembersListContinueError` union.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DbxTeamMembersListContinueError : NSObject <DbxSerializable> 

/// The `TeamMembersListContinueErrorTag` enum type represents the possible tag
/// states that the `DbxTeamMembersListContinueError` union can exist in.
typedef NS_ENUM(NSInteger, TeamMembersListContinueErrorTag) {
    /// The cursor is invalid.
    TeamMembersListContinueErrorInvalidCursor,

    /// (no description).
    TeamMembersListContinueErrorOther,

};

/// Represents the union's current tag state.
@property (nonatomic) TeamMembersListContinueErrorTag tag;


/// Initializes union class with tag state of `InvalidCursor`.
- (nonnull instancetype)initWithInvalidCursor;

/// Initializes union class with tag state of `Other`.
- (nonnull instancetype)initWithOther;

/// Returns whether the union's current tag state has value `InvalidCursor`.
- (BOOL)isInvalidCursor;

/// Returns whether the union's current tag state has value `Other`.
- (BOOL)isOther;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the
/// `DbxTeamMembersListContinueError` object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxTeamMembersListContinueError` union.
/// 
@interface DbxTeamMembersListContinueErrorSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxTeamMembersListContinueError` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxTeamMembersListContinueError * _Nonnull)obj;

/// Returns an instantiation of the `DbxTeamMembersListContinueError` object
/// from a json-compatible dictionary representation.
+ (DbxTeamMembersListContinueError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end