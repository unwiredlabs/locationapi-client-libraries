# unwired - Kotlin client library for Location API

## Requires

* Kotlin 1.1.2
* Gradle 3.3

## Build

First, create the gradle wrapper script:

```
gradle wrapper
```

Then, run:

```
./gradlew check assemble
```

This runs all tests and packages the library.

## Features/Implementation Notes

* Supports JSON inputs/outputs, File inputs, and Form inputs.
* Supports collection formats for query parameters: csv, tsv, ssv, pipes.
* Some Kotlin and Java types are fully qualified to avoid conflicts with types defined in OpenAPI definitions.
* Implementation of ApiClient is intended to reduce method counts, specifically to benefit Android targets.

<a name="documentation-for-api-endpoints"></a>
## Documentation for API Endpoints

All URIs are relative to *https://us1.unwiredlabs.com/v2*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BALANCEApi* | [**balance**](docs/BALANCEApi.md#balance) | **GET** /balance.php | balance
*GEOLOCATIONApi* | [**geolocation**](docs/GEOLOCATIONApi.md#geolocation) | **POST** /process.php | Geolocation
*REVERSEApi* | [**reverse**](docs/REVERSEApi.md#reverse) | **GET** /reverse.php | Reverse Geocoding
*SEARCHApi* | [**search**](docs/SEARCHApi.md#search) | **GET** /search.php | Forward Geocoding
*TimezoneApi* | [**timezone**](docs/TimezoneApi.md#timezone) | **GET** /timezone.php | timezone


<a name="documentation-for-models"></a>
## Documentation for Models

 - [unwired.models.AddressDetailsSchema](docs/AddressDetailsSchema.md)
 - [unwired.models.AddressSchema](docs/AddressSchema.md)
 - [unwired.models.AllSchema](docs/AllSchema.md)
 - [unwired.models.BalanceResponseSchema](docs/BalanceResponseSchema.md)
 - [unwired.models.BtSchema](docs/BtSchema.md)
 - [unwired.models.CellSchema](docs/CellSchema.md)
 - [unwired.models.ErrorSchema](docs/ErrorSchema.md)
 - [unwired.models.FallbackSchema](docs/FallbackSchema.md)
 - [unwired.models.GeolocationAddressSchema](docs/GeolocationAddressSchema.md)
 - [unwired.models.GeolocationErrorSchema](docs/GeolocationErrorSchema.md)
 - [unwired.models.GeolocationResponseSchema](docs/GeolocationResponseSchema.md)
 - [unwired.models.GeolocationSchema](docs/GeolocationSchema.md)
 - [unwired.models.IpfSchema](docs/IpfSchema.md)
 - [unwired.models.LacfSchema](docs/LacfSchema.md)
 - [unwired.models.RadioSchema](docs/RadioSchema.md)
 - [unwired.models.ReverseResponseSchema](docs/ReverseResponseSchema.md)
 - [unwired.models.ScfSchema](docs/ScfSchema.md)
 - [unwired.models.SearchResponseSchema](docs/SearchResponseSchema.md)
 - [unwired.models.TimezoneResponseSchema](docs/TimezoneResponseSchema.md)
 - [unwired.models.TimezoneSchema](docs/TimezoneSchema.md)
 - [unwired.models.WifiSchema](docs/WifiSchema.md)


<a name="documentation-for-authorization"></a>
## Documentation for Authorization

<a name="token"></a>
### token

- **Type**: API key
- **API key parameter name**: token
- **Location**: URL query string

