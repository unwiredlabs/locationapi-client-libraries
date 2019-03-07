# locationapi-client-libraries
This repository contains LocationAPI definition written in OpenAPI (v3) and the client libraries generated using (openapi generator)[https://openapi-generator.tech/] and samples.

Please see the successfully created one in the subfolders.

language  |  tested?| 
:---------|:--------|
clojure   |  no     |
csharp    |  no     |
dart      |  no     |
go        |  no     |
haskell   |  no     |
java      |  yes    | 
kotlin	  |  no     |
objc      |  no     |
perl      |  no     |
php       |  yes    |
python    |  yes    |
qt5cpp    |  no     |
r         |  no     |
ruby      |  no     |
rust      |  no     |
scala     |  no     |
swift4    |  yes    |

## Supported APIs

Currently the following APIs are supported

 * Geolocation API 
 * Geocoding API 
 * Timezone API
 * Balance API


## Specification file:
The `ul_api_spec_openapi3_v2_0_0` contains the specifiation of our LocationAPI. It is written in OpenAPI 3.0.

## Generate libraries:
The script `create.sh` is used generate libraries in various languages.

### Update all clients

./create.sh

### Update one client of your choice

./create.sh [yourlanguage]