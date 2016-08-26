///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxPropertiesPropertyField;
@class DbxPropertiesPropertyGroup;

/// 
/// The `DbxPropertiesPropertyGroup` struct.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
/// Collection of custom properties in filled property templates.
/// 
@interface DbxPropertiesPropertyGroup : NSObject <DbxSerializable> 

/// A unique identifier for a property template type.
@property (nonatomic, copy) NSString * _Nonnull templateId;

/// This is a list of custom properties associated with a file. There can be up
/// to 32 properties for a template.
@property (nonatomic) NSArray<DbxPropertiesPropertyField *> * _Nonnull fields;

/// Full constructor for the `PropertyGroup` struct (exposes all instance
/// variables).
- (nonnull instancetype)initWithTemplateId:(NSString * _Nonnull)templateId fields:(NSArray<DbxPropertiesPropertyField *> * _Nonnull)fields;

/// Returns a human-readable representation of the `DbxPropertiesPropertyGroup`
/// object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxPropertiesPropertyGroup` struct.
/// 
@interface DbxPropertiesPropertyGroupSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxPropertiesPropertyGroup` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxPropertiesPropertyGroup * _Nonnull)obj;

/// Returns an instantiation of the `DbxPropertiesPropertyGroup` object from a
/// json-compatible dictionary representation.
+ (DbxPropertiesPropertyGroup * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end