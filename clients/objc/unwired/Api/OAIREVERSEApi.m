#import "OAIREVERSEApi.h"
#import "OAIQueryParamCollection.h"
#import "OAIApiClient.h"


@interface OAIREVERSEApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation OAIREVERSEApi

NSString* kOAIREVERSEApiErrorDomain = @"OAIREVERSEApiErrorDomain";
NSInteger kOAIREVERSEApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[OAIApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(OAIApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Reverse Geocoding
/// Reverse geocoding is the process of converting a coordinate or location (latitude, longitude) to a readable address or place name. This permits the identification of nearby street addresses, places, and/or area subdivisions such as a neighborhood, county, state, or country.
///  @param lat Latitude of the location to generate an address for. 
///
///  @param lon Longitude of the location to generate an address for. 
///
///  @param zoom Zoom value lies between 0-18. Level of detail required where 0 is country and 18 is house/building (optional)
///
///  @param acceptLanguage Preferred language order for showing search results, overrides the value specified in the Accept-Language HTTP header. Defaults to en. To use native language for the response when available, use accept-language=native (optional)
///
///  @returns NSObject*
///
-(NSURLSessionTask*) reverseWithLat: (NSNumber*) lat
    lon: (NSNumber*) lon
    zoom: (NSNumber*) zoom
    acceptLanguage: (NSString*) acceptLanguage
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter 'lat' is set
    if (lat == nil) {
        NSParameterAssert(lat);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"lat"] };
            NSError* error = [NSError errorWithDomain:kOAIREVERSEApiErrorDomain code:kOAIREVERSEApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'lon' is set
    if (lon == nil) {
        NSParameterAssert(lon);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"lon"] };
            NSError* error = [NSError errorWithDomain:kOAIREVERSEApiErrorDomain code:kOAIREVERSEApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/reverse.php"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (lat != nil) {
        queryParams[@"lat"] = lat;
    }
    if (lon != nil) {
        queryParams[@"lon"] = lon;
    }
    if (zoom != nil) {
        queryParams[@"zoom"] = zoom;
    }
    if (acceptLanguage != nil) {
        queryParams[@"accept-language"] = acceptLanguage;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"token"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}



@end
