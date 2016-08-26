///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxSharingGetSharedLinksArg;

/// 
/// The `DbxSharingGetSharedLinksArg` struct.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DbxSharingGetSharedLinksArg : NSObject <DbxSerializable> 

/// See getSharedLinks description.
@property (nonatomic, copy) NSString * _Nullable path;

/// Full constructor for the `GetSharedLinksArg` struct (exposes all instance
/// variables).
- (nonnull instancetype)initWithPath:(NSString * _Nullable)path;

/// Convenience constructor for the `GetSharedLinksArg` struct (exposes only
/// non-nullable instance variables with no default value).
- (nonnull instancetype)init;

/// Returns a human-readable representation of the `DbxSharingGetSharedLinksArg`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxSharingGetSharedLinksArg` struct.
/// 
@interface DbxSharingGetSharedLinksArgSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxSharingGetSharedLinksArg` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxSharingGetSharedLinksArg * _Nonnull)obj;

/// Returns an instantiation of the `DbxSharingGetSharedLinksArg` object from a
/// json-compatible dictionary representation.
+ (DbxSharingGetSharedLinksArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end