///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxTeamGroupsMembersListContinueArg;

/// 
/// The `DbxTeamGroupsMembersListContinueArg` struct.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DbxTeamGroupsMembersListContinueArg : NSObject <DbxSerializable> 

/// Indicates from what point to get the next set of groups.
@property (nonatomic, copy) NSString * _Nonnull cursor;

/// Full constructor for the `GroupsMembersListContinueArg` struct (exposes all
/// instance variables).
- (nonnull instancetype)initWithCursor:(NSString * _Nonnull)cursor;

/// Returns a human-readable representation of the
/// `DbxTeamGroupsMembersListContinueArg` object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxTeamGroupsMembersListContinueArg`
/// struct.
/// 
@interface DbxTeamGroupsMembersListContinueArgSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxTeamGroupsMembersListContinueArg` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxTeamGroupsMembersListContinueArg * _Nonnull)obj;

/// Returns an instantiation of the `DbxTeamGroupsMembersListContinueArg` object
/// from a json-compatible dictionary representation.
+ (DbxTeamGroupsMembersListContinueArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end