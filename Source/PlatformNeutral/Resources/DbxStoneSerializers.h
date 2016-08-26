///
/// The objects in this file are used by generated code and should not need to be invoked manually.
///

#import <Foundation/Foundation.h>
#import "DbxSerializable.h"

///
/// Category to ensure `NSArray` class "implements" `DbxSerializable` protocol, which is 
/// required for all Obj-C SDK API route arguments. This avoids a compiler warning for 
/// NSArray-type arguments.
///
@interface NSArray (DbxSerializable) <DbxSerializable>

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end

///
/// Serializer functions used by the SDK to serialize/deserialize `NSDate` types.
///
@interface DbxNSDateSerializer : NSObject

/// Returns a json-compatible `NSString` that represents an `NSDate` type based on the supplied
/// `NSDate` object and date format string.
+ (NSString * _Nonnull)serialize:(NSDate * _Nonnull)value dateFormat:(NSString * _Nonnull)dateFormat;

/// Returns an `NSDate` object from the supplied `NSString`-representation of an `NSDate` object and
/// the supplied date format string.
+ (NSDate * _Nonnull)deserialize:(NSString * _Nonnull)value dateFormat:(NSString * _Nonnull)dateFormat;

@end

///
/// Serializer functions used by the SDK to serialize/deserialize NSArray types.
///
@interface DbxArraySerializer : NSObject

/// Applies a serialization block to each element in the array and returns a new array with
/// all elements serialized. The serialization block either serializes the object, or if the
/// object is a wrapper for a primitive type, it leaves it unchanged. 
+ (NSArray * _Nonnull)serialize:(NSArray * _Nonnull)value withBlock:(id _Nonnull (^_Nonnull)(id _Nonnull))serializeBlock;

/// Applies a deserialization block to each element in the array and returns a new array with
/// all elements deserialized. The serialization block either deserializes the object, or if the
/// object is a wrapper for a primitive type, it leaves it unchanged. 
+ (NSArray * _Nonnull)deserialize:(NSArray * _Nonnull)jsonData withBlock:(id _Nonnull (^_Nonnull)(id _Nonnull))deserializeBlock;

@end