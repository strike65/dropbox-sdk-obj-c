///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

@class DbxPropertiesListPropertyTemplateIds;

/// 
/// The `DbxPropertiesListPropertyTemplateIds` struct.
/// 
/// This class implements the `DbxSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DbxPropertiesListPropertyTemplateIds : NSObject <DbxSerializable> 

/// List of identifiers for templates added by route properties/template/add.
@property (nonatomic) NSArray<NSString *> * _Nonnull templateIds;

/// Full constructor for the `ListPropertyTemplateIds` struct (exposes all
/// instance variables).
- (nonnull instancetype)initWithTemplateIds:(NSArray<NSString *> * _Nonnull)templateIds;

/// Returns a human-readable representation of the
/// `DbxPropertiesListPropertyTemplateIds` object.
- (NSString * _Nonnull)description;

@end


/// 
/// The serialization class for the `DbxPropertiesListPropertyTemplateIds`
/// struct.
/// 
@interface DbxPropertiesListPropertyTemplateIdsSerializer : NSObject 

/// Returns a json-compatible dictionary representation of the
/// `DbxPropertiesListPropertyTemplateIds` object from an instantiation.
+ (NSDictionary * _Nonnull)serialize:(DbxPropertiesListPropertyTemplateIds * _Nonnull)obj;

/// Returns an instantiation of the `DbxPropertiesListPropertyTemplateIds`
/// object from a json-compatible dictionary representation.
+ (DbxPropertiesListPropertyTemplateIds * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end