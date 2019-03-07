library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'package:http/browser_client.dart';
import 'package:http/http.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';

part 'api/balance_api.dart';
part 'api/geolocation_api.dart';
part 'api/reverse_api.dart';
part 'api/search_api.dart';
part 'api/timezone_api.dart';

part 'model/address_details_schema.dart';
part 'model/address_schema.dart';
part 'model/all_schema.dart';
part 'model/balance_response_schema.dart';
part 'model/bt_schema.dart';
part 'model/cell_schema.dart';
part 'model/error_schema.dart';
part 'model/fallback_schema.dart';
part 'model/geolocation_address_schema.dart';
part 'model/geolocation_error_schema.dart';
part 'model/geolocation_response_schema.dart';
part 'model/geolocation_schema.dart';
part 'model/ipf_schema.dart';
part 'model/lacf_schema.dart';
part 'model/radio_schema.dart';
part 'model/reverse_response_schema.dart';
part 'model/scf_schema.dart';
part 'model/search_response_schema.dart';
part 'model/timezone_response_schema.dart';
part 'model/timezone_schema.dart';
part 'model/wifi_schema.dart';


ApiClient defaultApiClient = ApiClient();
