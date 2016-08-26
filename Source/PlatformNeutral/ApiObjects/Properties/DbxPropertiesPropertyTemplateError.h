///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxPropertiesPropertyTemplateError;

/// 
/// The `DbxPropertiesPropertyTemplateError` union.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DbxPropertiesPropertyTemplateError : NSObject <DbxSerializable> 

/// The `PropertiesPropertyTemplateErrorTag` enum type represents the possible
/// tag states that the `DbxPropertiesPropertyTemplateError` union can exist in.
typedef NS_ENUM(NSInteger, PropertiesPropertyTemplateErrorTag) {
    /// Property template does not exist for given identifier.
    PropertiesPropertyTemplateErrorTemplateNotFound,

    /// You do not have the permissions to modify this property template.
    PropertiesPropertyTemplateErrorRestrictedContent,

    /// (no description).
    PropertiesPropertyTemplateErrorOther,

};

/// Represents the union's current tag state.
@property (nonatomic) PropertiesPropertyTemplateErrorTag tag;

/// Property template does not exist for given identifier.
@property (nonatomic, copy) NSString * _Nonnull templateNotFound;


/// Initializes union class with tag state of `TemplateNotFound`.
- (nonnull instancetype)initWithTemplateNotFound:(NSString * _Nonnull)templateNotFound;

/// Initializes union class with tag state of `RestrictedContent`.
- (nonnull instancetype)initWithRestrictedContent;

/// Initializes union class with tag state of `Other`.
- (nonnull instancetype)initWithOther;

/// Returns whether the union's current tag state has value `TemplateNotFound`.
- (BOOL)isTemplateNotFound;

/// Returns whether the union's current tag state has value `RestrictedContent`.
- (BOOL)isRestrictedContent;

/// Returns whether the union's current tag state has value `Other`.
- (BOOL)isOther;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the
/// `DbxPropertiesPropertyTemplateError` object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxPropertiesPropertyTemplateError` union.
/// 
@interface DbxPropertiesPropertyTemplateErrorSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxPropertiesPropertyTemplateError` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxPropertiesPropertyTemplateError * _Nonnull)obj;

/// Returns an instantiation of the `DbxPropertiesPropertyTemplateError` object
/// from a json-compatible dictionary representation.
+ (DbxPropertiesPropertyTemplateError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end