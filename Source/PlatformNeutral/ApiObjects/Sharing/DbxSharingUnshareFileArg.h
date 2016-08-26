///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxSharingUnshareFileArg;

/// 
/// The `DbxSharingUnshareFileArg` struct.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
/// Arguments for unshareFile.
/// 
@interface DbxSharingUnshareFileArg : NSObject <DbxSerializable> 

/// The file to unshare.
@property (nonatomic, copy) NSString * _Nonnull file;

/// Full constructor for the `UnshareFileArg` struct (exposes all instance
/// variables).
- (nonnull instancetype)initWithFile:(NSString * _Nonnull)file;

/// Returns a human-readable representation of the `DbxSharingUnshareFileArg`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxSharingUnshareFileArg` struct.
/// 
@interface DbxSharingUnshareFileArgSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxSharingUnshareFileArg` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxSharingUnshareFileArg * _Nonnull)obj;

/// Returns an instantiation of the `DbxSharingUnshareFileArg` object from a
/// json-compatible dictionary representation.
+ (DbxSharingUnshareFileArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end