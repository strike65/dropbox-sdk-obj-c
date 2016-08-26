///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxFilesListFolderLongpollResult;

/// 
/// The `DbxFilesListFolderLongpollResult` struct.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DbxFilesListFolderLongpollResult : NSObject <DbxSerializable> 

/// Indicates whether new changes are available. If true, call
/// listFolderContinue to retrieve the changes.
@property (nonatomic, copy) NSNumber * _Nonnull changes;

/// If present, backoff for at least this many seconds before calling
/// listFolderLongpoll again.
@property (nonatomic, copy) NSNumber * _Nullable backoff;

/// Full constructor for the `ListFolderLongpollResult` struct (exposes all
/// instance variables).
- (nonnull instancetype)initWithChanges:(NSNumber * _Nonnull)changes backoff:(NSNumber * _Nullable)backoff;

/// Convenience constructor for the `ListFolderLongpollResult` struct (exposes
/// only non-nullable instance variables with no default value).
- (nonnull instancetype)initWithChanges:(NSNumber * _Nonnull)changes;

/// Returns a human-readable representation of the
/// `DbxFilesListFolderLongpollResult` object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxFilesListFolderLongpollResult` struct.
/// 
@interface DbxFilesListFolderLongpollResultSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxFilesListFolderLongpollResult` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxFilesListFolderLongpollResult * _Nonnull)obj;

/// Returns an instantiation of the `DbxFilesListFolderLongpollResult` object
/// from a json-compatible dictionary representation.
+ (DbxFilesListFolderLongpollResult * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end