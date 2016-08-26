///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxTeamMemberSelectorError;

/// 
/// The `DbxTeamMemberSelectorError` union.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DbxTeamMemberSelectorError : NSObject <DbxSerializable> 

/// The `TeamMemberSelectorErrorTag` enum type represents the possible tag
/// states that the `DbxTeamMemberSelectorError` union can exist in.
typedef NS_ENUM(NSInteger, TeamMemberSelectorErrorTag) {
    /// No matching user found. The provided team_member_id, email, or
    /// external_id does not exist on this team.
    TeamMemberSelectorErrorUserNotFound,

    /// The user is not a member of the team.
    TeamMemberSelectorErrorUserNotInTeam,

};

/// Represents the union's current tag state.
@property (nonatomic) TeamMemberSelectorErrorTag tag;


/// Initializes union class with tag state of `UserNotFound`.
- (nonnull instancetype)initWithUserNotFound;

/// Initializes union class with tag state of `UserNotInTeam`.
- (nonnull instancetype)initWithUserNotInTeam;

/// Returns whether the union's current tag state has value `UserNotFound`.
- (BOOL)isUserNotFound;

/// Returns whether the union's current tag state has value `UserNotInTeam`.
- (BOOL)isUserNotInTeam;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the `DbxTeamMemberSelectorError`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxTeamMemberSelectorError` union.
/// 
@interface DbxTeamMemberSelectorErrorSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxTeamMemberSelectorError` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxTeamMemberSelectorError * _Nonnull)obj;

/// Returns an instantiation of the `DbxTeamMemberSelectorError` object from a
/// json-compatible dictionary representation.
+ (DbxTeamMemberSelectorError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end