#import "OAIGeolocationResponseSchema.h"

@implementation OAIGeolocationResponseSchema

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"status": @"status", @"message": @"message", @"balance": @"balance", @"balanceSlots": @"balance_slots", @"lat": @"lat", @"lon": @"lon", @"accuracy": @"accuracy", @"address": @"address", @"addressDetails": @"address_details", @"aged": @"aged", @"fallback": @"fallback" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"status", @"message", @"balance", @"balanceSlots", @"lat", @"lon", @"accuracy", @"address", @"addressDetails", @"aged", @"fallback"];
  return [optionalProperties containsObject:propertyName];
}

@end
