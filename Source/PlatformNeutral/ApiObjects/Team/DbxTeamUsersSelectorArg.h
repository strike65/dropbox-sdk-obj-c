///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxTeamUsersSelectorArg;

/// 
/// The `DbxTeamUsersSelectorArg` union.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
/// Argument for selecting a list of users, either by team_member_ids,
/// external_ids or emails.
/// 
@interface DbxTeamUsersSelectorArg : NSObject <DbxSerializable> 

/// The `TeamUsersSelectorArgTag` enum type represents the possible tag states
/// that the `DbxTeamUsersSelectorArg` union can exist in.
typedef NS_ENUM(NSInteger, TeamUsersSelectorArgTag) {
    /// List of member IDs.
    TeamUsersSelectorArgTeamMemberIds,

    /// List of external user IDs.
    TeamUsersSelectorArgExternalIds,

    /// List of email addresses.
    TeamUsersSelectorArgEmails,

};

/// Represents the union's current tag state.
@property (nonatomic) TeamUsersSelectorArgTag tag;

/// List of member IDs.
@property (nonatomic) NSArray<NSString *> * _Nonnull teamMemberIds;

/// List of external user IDs.
@property (nonatomic) NSArray<NSString *> * _Nonnull externalIds;

/// List of email addresses.
@property (nonatomic) NSArray<NSString *> * _Nonnull emails;


/// Initializes union class with tag state of `TeamMemberIds`.
- (nonnull instancetype)initWithTeamMemberIds:(NSArray<NSString *> * _Nonnull)teamMemberIds;

/// Initializes union class with tag state of `ExternalIds`.
- (nonnull instancetype)initWithExternalIds:(NSArray<NSString *> * _Nonnull)externalIds;

/// Initializes union class with tag state of `Emails`.
- (nonnull instancetype)initWithEmails:(NSArray<NSString *> * _Nonnull)emails;

/// Returns whether the union's current tag state has value `TeamMemberIds`.
- (BOOL)isTeamMemberIds;

/// Returns whether the union's current tag state has value `ExternalIds`.
- (BOOL)isExternalIds;

/// Returns whether the union's current tag state has value `Emails`.
- (BOOL)isEmails;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the `DbxTeamUsersSelectorArg`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxTeamUsersSelectorArg` union.
/// 
@interface DbxTeamUsersSelectorArgSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxTeamUsersSelectorArg` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxTeamUsersSelectorArg * _Nonnull)obj;

/// Returns an instantiation of the `DbxTeamUsersSelectorArg` object from a
/// json-compatible dictionary representation.
+ (DbxTeamUsersSelectorArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end