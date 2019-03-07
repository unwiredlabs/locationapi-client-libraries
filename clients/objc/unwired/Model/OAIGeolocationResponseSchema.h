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


#import "OAIAddressDetailsSchema.h"
#import "OAIFallbackSchema.h"
@protocol OAIAddressDetailsSchema;
@class OAIAddressDetailsSchema;
@protocol OAIFallbackSchema;
@class OAIFallbackSchema;



@protocol OAIGeolocationResponseSchema
@end

@interface OAIGeolocationResponseSchema : OAIObject

/* If the request is successful, ok is returned. Otherwise error is returned [optional]
 */
@property(nonatomic) NSString* status;
/* Any additional information from the server is returned here [optional]
 */
@property(nonatomic) NSString* message;
/* This represents the remaining balance on the API token. Requests that return error are not charged and do not affect balance [optional]
 */
@property(nonatomic) NSNumber* balance;
/* This represents the remaining balance of device slots. Requests that return error are not charged and do not affect balance. If -1 is returned, then observe it as an error while calculating slots balance. This element will only exist if you are on a device plan. [optional]
 */
@property(nonatomic) NSNumber* balanceSlots;
/* The latitude representing the location [optional]
 */
@property(nonatomic) NSNumber* lat;
/* The longitude representing the location [optional]
 */
@property(nonatomic) NSNumber* lon;
/* The accuracy of the position is returned in meters [optional]
 */
@property(nonatomic) NSNumber* accuracy;
/* The physical address of the location [optional]
 */
@property(nonatomic) NSString* address;

@property(nonatomic) OAIAddressDetailsSchema* addressDetails;
/* Shown when the location is based on a single measurement or those older than 90 days or is an LAC fallback [optional]
 */
@property(nonatomic) NSNumber* aged;

@property(nonatomic) OAIFallbackSchema* fallback;

@end