part of openapi.api;



class TimezoneApi {
  final ApiClient apiClient;

  TimezoneApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// timezone
  ///
  /// The Unwired Labs TimeZone API provides time offset data for locations on the surface of the earth.
  Future<Object> timezone(double lat, double lon) async {
    Object postBody;

    // verify required params are set
    if(lat == null) {
     throw new ApiException(400, "Missing required param: lat");
    }
    if(lon == null) {
     throw new ApiException(400, "Missing required param: lon");
    }

    // create path and map variables
    String path = "/timezone.php".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "lat", lat));
      queryParams.addAll(_convertParametersForCollectionFormat("", "lon", lon));

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
