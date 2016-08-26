///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxTeamGroupMembersAddError;

/// 
/// The `DbxTeamGroupMembersAddError` union.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DbxTeamGroupMembersAddError : NSObject <DbxSerializable> 

/// The `TeamGroupMembersAddErrorTag` enum type represents the possible tag
/// states that the `DbxTeamGroupMembersAddError` union can exist in.
typedef NS_ENUM(NSInteger, TeamGroupMembersAddErrorTag) {
    /// No matching group found. No groups match the specified group ID.
    TeamGroupMembersAddErrorGroupNotFound,

    /// (no description).
    TeamGroupMembersAddErrorOther,

    /// You cannot add duplicate users. One or more of the members you are
    /// trying to add is already a member of the group.
    TeamGroupMembersAddErrorDuplicateUser,

    /// Group is not in this team. You cannot add members to a group that is
    /// outside of your team.
    TeamGroupMembersAddErrorGroupNotInTeam,

    /// These members are not part of your team. Currently, you cannot add
    /// members to a group if they are not part of your team, though this may
    /// change in a subsequent version. To add new members to your Dropbox
    /// Business team, use the membersAdd endpoint.
    TeamGroupMembersAddErrorMembersNotInTeam,

    /// These users were not found in Dropbox.
    TeamGroupMembersAddErrorUsersNotFound,

    /// A suspended user cannot be added to a group as owner in GroupAccessType.
    TeamGroupMembersAddErrorUserMustBeActiveToBeOwner,

    /// A company-managed group cannot be managed by a user.
    TeamGroupMembersAddErrorUserCannotBeManagerOfCompanyManagedGroup,

};

/// Represents the union's current tag state.
@property (nonatomic) TeamGroupMembersAddErrorTag tag;

/// These members are not part of your team. Currently, you cannot add members
/// to a group if they are not part of your team, though this may change in a
/// subsequent version. To add new members to your Dropbox Business team, use
/// the membersAdd endpoint.
@property (nonatomic) NSArray<NSString *> * _Nonnull membersNotInTeam;

/// These users were not found in Dropbox.
@property (nonatomic) NSArray<NSString *> * _Nonnull usersNotFound;

/// A company-managed group cannot be managed by a user.
@property (nonatomic) NSArray<NSString *> * _Nonnull userCannotBeManagerOfCompanyManagedGroup;


/// Initializes union class with tag state of `GroupNotFound`.
- (nonnull instancetype)initWithGroupNotFound;

/// Initializes union class with tag state of `Other`.
- (nonnull instancetype)initWithOther;

/// Initializes union class with tag state of `DuplicateUser`.
- (nonnull instancetype)initWithDuplicateUser;

/// Initializes union class with tag state of `GroupNotInTeam`.
- (nonnull instancetype)initWithGroupNotInTeam;

/// Initializes union class with tag state of `MembersNotInTeam`.
- (nonnull instancetype)initWithMembersNotInTeam:(NSArray<NSString *> * _Nonnull)membersNotInTeam;

/// Initializes union class with tag state of `UsersNotFound`.
- (nonnull instancetype)initWithUsersNotFound:(NSArray<NSString *> * _Nonnull)usersNotFound;

/// Initializes union class with tag state of `UserMustBeActiveToBeOwner`.
- (nonnull instancetype)initWithUserMustBeActiveToBeOwner;

/// Initializes union class with tag state of
/// `UserCannotBeManagerOfCompanyManagedGroup`.
- (nonnull instancetype)initWithUserCannotBeManagerOfCompanyManagedGroup:(NSArray<NSString *> * _Nonnull)userCannotBeManagerOfCompanyManagedGroup;

/// Returns whether the union's current tag state has value `GroupNotFound`.
- (BOOL)isGroupNotFound;

/// Returns whether the union's current tag state has value `Other`.
- (BOOL)isOther;

/// Returns whether the union's current tag state has value `DuplicateUser`.
- (BOOL)isDuplicateUser;

/// Returns whether the union's current tag state has value `GroupNotInTeam`.
- (BOOL)isGroupNotInTeam;

/// Returns whether the union's current tag state has value `MembersNotInTeam`.
- (BOOL)isMembersNotInTeam;

/// Returns whether the union's current tag state has value `UsersNotFound`.
- (BOOL)isUsersNotFound;

/// Returns whether the union's current tag state has value
/// `UserMustBeActiveToBeOwner`.
- (BOOL)isUserMustBeActiveToBeOwner;

/// Returns whether the union's current tag state has value
/// `UserCannotBeManagerOfCompanyManagedGroup`.
- (BOOL)isUserCannotBeManagerOfCompanyManagedGroup;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the `DbxTeamGroupMembersAddError`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxTeamGroupMembersAddError` union.
/// 
@interface DbxTeamGroupMembersAddErrorSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxTeamGroupMembersAddError` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxTeamGroupMembersAddError * _Nonnull)obj;

/// Returns an instantiation of the `DbxTeamGroupMembersAddError` object from a
/// json-compatible dictionary representation.
+ (DbxTeamGroupMembersAddError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end