#import "OAIAddressDetailsSchema.h"

@implementation OAIAddressDetailsSchema

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"area": @"area", @"locality": @"locality", @"district": @"district", @"county": @"county", @"city": @"city", @"state": @"state", @"country": @"country", @"countryCode": @"country_code", @"postalCode": @"postal_code" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"area", @"locality", @"district", @"county", @"city", @"state", @"country", @"countryCode", @"postalCode"];
  return [optionalProperties containsObject:propertyName];
}

@end
