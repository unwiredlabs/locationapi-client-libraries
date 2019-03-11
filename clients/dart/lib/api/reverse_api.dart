part of openapi.api;



class REVERSEApi {
  final ApiClient apiClient;

  REVERSEApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Reverse Geocoding
  ///
  /// Reverse geocoding is the process of converting a coordinate or location (latitude, longitude) to a readable address or place name. This permits the identification of nearby street addresses, places, and/or area subdivisions such as a neighborhood, county, state, or country.
  Future<Object> reverse(double lat, double lon, { int zoom, String acceptLanguage }) async {
    Object postBody;

    // verify required params are set
    if(lat == null) {
     throw new ApiException(400, "Missing required param: lat");
    }
    if(lon == null) {
     throw new ApiException(400, "Missing required param: lon");
    }

    // create path and map variables
    String path = "/reverse.php".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "lat", lat));
      queryParams.addAll(_convertParametersForCollectionFormat("", "lon", lon));
    if(zoom != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "zoom", zoom));
    }
    if(acceptLanguage != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "accept-language", acceptLanguage));
    }

    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["token"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
    }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return apiClient.deserialize(response.body, 'Object') as Object;
    } else {
      return null;
    }
  }
}
