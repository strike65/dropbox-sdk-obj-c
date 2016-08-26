///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>

#import "DbxErrors.h"
#import "DbxStoneBase.h"
#import "DbxTasks.h"
#import "DbxUsersAccount.h"
#import "DbxUsersAccountType.h"
#import "DbxUsersBasicAccount.h"
#import "DbxUsersFullAccount.h"
#import "DbxUsersFullTeam.h"
#import "DbxUsersGetAccountArg.h"
#import "DbxUsersGetAccountBatchArg.h"
#import "DbxUsersGetAccountBatchError.h"
#import "DbxUsersGetAccountError.h"
#import "DbxUsersName.h"
#import "DbxUsersRouteObjects.h"
#import "DbxUsersRoutes.h"
#import "DbxUsersSpaceAllocation.h"
#import "DbxUsersSpaceUsage.h"
#import "DropboxTransportClient.h"

/// 
/// Routes for the Users namespace
/// 
@interface DbxUsersRoutes : NSObject 

/// An instance of the networking client that each route will use to submit a
/// request.
@property (nonatomic) DropboxTransportClient * _Nonnull client;

/// Initializes the `DbxUsersRoutes` namespace container object with a
/// networking client.
- (nonnull instancetype)init:(DropboxTransportClient * _Nonnull)client;

/// 
/// Get information about a user's account.
/// 
/// - parameter accountId: A user's account identifier.
/// 
/// - returns: Through the response callback, the caller will receive a `DbxUsersBasicAccount * _Nonnull` object on
/// success or a `DbxUsersGetAccountError * _Nonnull` object on failure.
/// 
- (DbxRpcTask<DbxUsersBasicAccount *, DbxUsersGetAccountError *> * _Nonnull)getAccount:(NSString * _Nonnull)accountId;

/// 
/// Get information about multiple user accounts.  At most 300 accounts may be queried per request.
/// 
/// - parameter accountIds: List of user account identifiers.  Should not contain any duplicate account IDs.
/// 
/// - returns: Through the response callback, the caller will receive a `NSArray<DbxUsersBasicAccount *> * _Nonnull`
/// object on success or a `DbxUsersGetAccountBatchError * _Nonnull` object on failure.
/// 
- (DbxRpcTask<NSArray<DbxUsersBasicAccount *> *, DbxUsersGetAccountBatchError *> * _Nonnull)getAccountBatch:(NSArray<NSString *> * _Nonnull)accountIds;

/// 
/// Get information about the current user's account.
/// 
/// 
/// - returns: Through the response callback, the caller will receive a `DbxUsersFullAccount * _Nonnull` object on
/// success or a `void` object on failure.
/// 
- (DbxRpcTask<DbxUsersFullAccount *, DbxNilObject *> * _Nonnull)getCurrentAccount;

/// 
/// Get the space usage information for the current user's account.
/// 
/// 
/// - returns: Through the response callback, the caller will receive a `DbxUsersSpaceUsage * _Nonnull` object on
/// success or a `void` object on failure.
/// 
- (DbxRpcTask<DbxUsersSpaceUsage *, DbxNilObject *> * _Nonnull)getSpaceUsage;

@end