#import <Foundation/Foundation.h>
#import "OAIObject.h"

/**
* Location API
* Geolocation, Geocoding and Maps
*
* OpenAPI spec version: 2.0.0
* 
*
* NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
* https://openapi-generator.tech
* Do not edit the class manually.
*/


#import "OAIAddressSchema.h"
@protocol OAIAddressSchema;
@class OAIAddressSchema;



@protocol OAIReverseResponseSchema
@end

@interface OAIReverseResponseSchema : OAIObject

/* If the request is successful, ok is returned. Otherwise error is returned [optional]
 */
@property(nonatomic) NSString* status;
/* Balance left in the account [optional]
 */
@property(nonatomic) NSNumber* balance;

@property(nonatomic) OAIAddressSchema* address;

@end
