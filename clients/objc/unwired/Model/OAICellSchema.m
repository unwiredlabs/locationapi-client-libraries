#import "OAICellSchema.h"

@implementation OAICellSchema

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"lac": @"lac", @"cid": @"cid", @"radio": @"radio", @"mcc": @"mcc", @"mnc": @"mnc", @"signal": @"signal", @"psc": @"psc", @"asu": @"asu", @"ta": @"ta" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"lac", @"cid", @"radio", @"mcc", @"mnc", @"signal", @"psc", @"asu", @"ta"];
  return [optionalProperties containsObject:propertyName];
}

@end
