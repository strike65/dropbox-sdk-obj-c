///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxFilesListFolderGetLatestCursorResult;

/// 
/// The `DbxFilesListFolderGetLatestCursorResult` struct.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DbxFilesListFolderGetLatestCursorResult : NSObject <DbxSerializable> 

/// Pass the cursor into listFolderContinue to see what's changed in the folder
/// since your previous query.
@property (nonatomic, copy) NSString * _Nonnull cursor;

/// Full constructor for the `ListFolderGetLatestCursorResult` struct (exposes
/// all instance variables).
- (nonnull instancetype)initWithCursor:(NSString * _Nonnull)cursor;

/// Returns a human-readable representation of the
/// `DbxFilesListFolderGetLatestCursorResult` object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxFilesListFolderGetLatestCursorResult`
/// struct.
/// 
@interface DbxFilesListFolderGetLatestCursorResultSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxFilesListFolderGetLatestCursorResult` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxFilesListFolderGetLatestCursorResult * _Nonnull)obj;

/// Returns an instantiation of the `DbxFilesListFolderGetLatestCursorResult`
/// object from a json-compatible dictionary representation.
+ (DbxFilesListFolderGetLatestCursorResult * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end