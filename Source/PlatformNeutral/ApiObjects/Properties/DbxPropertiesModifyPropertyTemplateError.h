///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxPropertiesModifyPropertyTemplateError;

/// 
/// The `DbxPropertiesModifyPropertyTemplateError` union.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DbxPropertiesModifyPropertyTemplateError : NSObject <DbxSerializable> 

/// The `PropertiesModifyPropertyTemplateErrorTag` enum type represents the
/// possible tag states that the `DbxPropertiesModifyPropertyTemplateError`
/// union can exist in.
typedef NS_ENUM(NSInteger, PropertiesModifyPropertyTemplateErrorTag) {
    /// Property template does not exist for given identifier.
    PropertiesModifyPropertyTemplateErrorTemplateNotFound,

    /// You do not have the permissions to modify this property template.
    PropertiesModifyPropertyTemplateErrorRestrictedContent,

    /// (no description).
    PropertiesModifyPropertyTemplateErrorOther,

    /// A property field name already exists in the template.
    PropertiesModifyPropertyTemplateErrorConflictingPropertyNames,

    /// There are too many properties in the changed template. The maximum
    /// number of properties per template is 32.
    PropertiesModifyPropertyTemplateErrorTooManyProperties,

    /// There are too many templates for the team.
    PropertiesModifyPropertyTemplateErrorTooManyTemplates,

    /// The template name, description or field names is too large.
    PropertiesModifyPropertyTemplateErrorTemplateAttributeTooLarge,

};

/// Represents the union's current tag state.
@property (nonatomic) PropertiesModifyPropertyTemplateErrorTag tag;

/// Property template does not exist for given identifier.
@property (nonatomic, copy) NSString * _Nonnull templateNotFound;


/// Initializes union class with tag state of `TemplateNotFound`.
- (nonnull instancetype)initWithTemplateNotFound:(NSString * _Nonnull)templateNotFound;

/// Initializes union class with tag state of `RestrictedContent`.
- (nonnull instancetype)initWithRestrictedContent;

/// Initializes union class with tag state of `Other`.
- (nonnull instancetype)initWithOther;

/// Initializes union class with tag state of `ConflictingPropertyNames`.
- (nonnull instancetype)initWithConflictingPropertyNames;

/// Initializes union class with tag state of `TooManyProperties`.
- (nonnull instancetype)initWithTooManyProperties;

/// Initializes union class with tag state of `TooManyTemplates`.
- (nonnull instancetype)initWithTooManyTemplates;

/// Initializes union class with tag state of `TemplateAttributeTooLarge`.
- (nonnull instancetype)initWithTemplateAttributeTooLarge;

/// Returns whether the union's current tag state has value `TemplateNotFound`.
- (BOOL)isTemplateNotFound;

/// Returns whether the union's current tag state has value `RestrictedContent`.
- (BOOL)isRestrictedContent;

/// Returns whether the union's current tag state has value `Other`.
- (BOOL)isOther;

/// Returns whether the union's current tag state has value
/// `ConflictingPropertyNames`.
- (BOOL)isConflictingPropertyNames;

/// Returns whether the union's current tag state has value `TooManyProperties`.
- (BOOL)isTooManyProperties;

/// Returns whether the union's current tag state has value `TooManyTemplates`.
- (BOOL)isTooManyTemplates;

/// Returns whether the union's current tag state has value
/// `TemplateAttributeTooLarge`.
- (BOOL)isTemplateAttributeTooLarge;

/// Returns a human-readable string representing the union's current tag state.
- (NSString * _Nonnull)getTagName;

/// Returns a human-readable representation of the
/// `DbxPropertiesModifyPropertyTemplateError` object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxPropertiesModifyPropertyTemplateError`
/// union.
/// 
@interface DbxPropertiesModifyPropertyTemplateErrorSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxPropertiesModifyPropertyTemplateError` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxPropertiesModifyPropertyTemplateError * _Nonnull)obj;

/// Returns an instantiation of the `DbxPropertiesModifyPropertyTemplateError`
/// object from a json-compatible dictionary representation.
+ (DbxPropertiesModifyPropertyTemplateError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end