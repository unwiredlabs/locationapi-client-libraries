#import "OAIGeolocationSchema.h"

@implementation OAIGeolocationSchema

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"token": @"token", @"_id": @"id", @"radio": @"radio", @"mcc": @"mcc", @"mnc": @"mnc", @"cells": @"cells", @"wifi": @"wifi", @"fallbacks": @"fallbacks", @"address": @"address", @"ip": @"ip", @"bt": @"bt" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"token", @"_id", @"radio", @"mcc", @"mnc", @"cells", @"wifi", @"fallbacks", @"address", @"ip", @"bt"];
  return [optionalProperties containsObject:propertyName];
}

@end
