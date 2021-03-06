///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBAUTHInvalidAccountTypeError.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBAUTHInvalidAccountTypeError

#pragma mark - Constructors

- (instancetype)initWithEndpoint {
  self = [super init];
  if (self) {
    _tag = DBAUTHInvalidAccountTypeErrorEndpoint;
  }
  return self;
}

- (instancetype)initWithFeature {
  self = [super init];
  if (self) {
    _tag = DBAUTHInvalidAccountTypeErrorFeature;
  }
  return self;
}

- (instancetype)initWithOther {
  self = [super init];
  if (self) {
    _tag = DBAUTHInvalidAccountTypeErrorOther;
  }
  return self;
}

#pragma mark - Instance field accessors

#pragma mark - Tag state methods

- (BOOL)isEndpoint {
  return _tag == DBAUTHInvalidAccountTypeErrorEndpoint;
}

- (BOOL)isFeature {
  return _tag == DBAUTHInvalidAccountTypeErrorFeature;
}

- (BOOL)isOther {
  return _tag == DBAUTHInvalidAccountTypeErrorOther;
}

- (NSString *)tagName {
  switch (_tag) {
  case DBAUTHInvalidAccountTypeErrorEndpoint:
    return @"DBAUTHInvalidAccountTypeErrorEndpoint";
  case DBAUTHInvalidAccountTypeErrorFeature:
    return @"DBAUTHInvalidAccountTypeErrorFeature";
  case DBAUTHInvalidAccountTypeErrorOther:
    return @"DBAUTHInvalidAccountTypeErrorOther";
  }

  @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an unknown value." userInfo:nil]);
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBAUTHInvalidAccountTypeErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBAUTHInvalidAccountTypeErrorSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBAUTHInvalidAccountTypeErrorSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBAUTHInvalidAccountTypeErrorSerializer

+ (NSDictionary *)serialize:(DBAUTHInvalidAccountTypeError *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if ([valueObj isEndpoint]) {
    jsonDict[@".tag"] = @"endpoint";
  } else if ([valueObj isFeature]) {
    jsonDict[@".tag"] = @"feature";
  } else if ([valueObj isOther]) {
    jsonDict[@".tag"] = @"other";
  } else {
    @throw([NSException exceptionWithName:@"InvalidTag"
                                   reason:@"Object not properly initialized. Tag has an unknown value."
                                 userInfo:nil]);
  }

  return jsonDict;
}

+ (DBAUTHInvalidAccountTypeError *)deserialize:(NSDictionary *)valueDict {
  NSString *tag = valueDict[@".tag"];

  if ([tag isEqualToString:@"endpoint"]) {
    return [[DBAUTHInvalidAccountTypeError alloc] initWithEndpoint];
  } else if ([tag isEqualToString:@"feature"]) {
    return [[DBAUTHInvalidAccountTypeError alloc] initWithFeature];
  } else if ([tag isEqualToString:@"other"]) {
    return [[DBAUTHInvalidAccountTypeError alloc] initWithOther];
  }

  @throw([NSException
      exceptionWithName:@"InvalidTag"
                 reason:[NSString stringWithFormat:@"Tag has an invalid value: \"%@\".", valueDict[@".tag"]]
               userInfo:nil]);
}

@end
