#import "OAIAddressSchema.h"

@implementation OAIAddressSchema

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"lat": @"lat", @"lon": @"lon", @"displayName": @"display_name", @"houseNumber": @"house_number", @"road": @"road", @"neighborhood": @"neighborhood", @"suburb": @"suburb", @"city": @"city", @"county": @"county", @"country": @"country", @"countryCode": @"country_code", @"postalCode": @"postal_code" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"lat", @"lon", @"displayName", @"houseNumber", @"road", @"neighborhood", @"suburb", @"city", @"county", @"country", @"countryCode", @"postalCode"];
  return [optionalProperties containsObject:propertyName];
}

@end
