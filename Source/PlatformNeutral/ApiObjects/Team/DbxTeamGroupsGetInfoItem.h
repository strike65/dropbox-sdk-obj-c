///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxTeamGroupFullInfo;
@class DbxTeamGroupsGetInfoItem;

/// 
/// The `DbxTeamGroupsGetInfoItem` union.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DbxTeamGroupsGetInfoItem : NSObject <DbxSerializable> 

/// The `TeamGroupsGetInfoItemTag` enum type represents the possible tag states
/// that the `DbxTeamGroupsGetInfoItem` union can exist in.
typedef NS_ENUM(NSInteger, TeamGroupsGetInfoItemTag) {
    /// An ID that was provided as a parameter to groupsGetInfo, and did not
    /// match a corresponding group. The ID can be a group ID, or an external
    /// ID, depending on how the method was called.
    TeamGroupsGetInfoItemIdNotFound,

    /// Info about a group.
    TeamGroupsGetInfoItemGroupInfo,

};

/// Represents the union's current tag state.
@property (nonatomic) TeamGroupsGetInfoItemTag tag;

/// An ID that was provided as a parameter to groupsGetInfo, and did not match a
/// corresponding group. The ID can be a group ID, or an external ID, depending
/// on how the method was called.
@property (nonatomic, copy) NSString * _Nonnull idNotFound;

/// Info about a group.
@property (nonatomic) DbxTeamGroupFullInfo * _Nonnull groupInfo;


/// Initializes union class with tag state of `IdNotFound`.
- (nonnull instancetype)initWithIdNotFound:(NSString * _Nonnull)idNotFound;

/// Initializes union class with tag state of `GroupInfo`.
- (nonnull instancetype)initWithGroupInfo:(DbxTeamGroupFullInfo * _Nonnull)groupInfo;

/// Returns whether the union's current tag state has value `IdNotFound`.
- (BOOL)isIdNotFound;

/// Returns whether the union's current tag state has value `GroupInfo`.
- (BOOL)isGroupInfo;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the `DbxTeamGroupsGetInfoItem`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxTeamGroupsGetInfoItem` union.
/// 
@interface DbxTeamGroupsGetInfoItemSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxTeamGroupsGetInfoItem` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxTeamGroupsGetInfoItem * _Nonnull)obj;

/// Returns an instantiation of the `DbxTeamGroupsGetInfoItem` object from a
/// json-compatible dictionary representation.
+ (DbxTeamGroupsGetInfoItem * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end