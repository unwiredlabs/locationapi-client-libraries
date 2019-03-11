from __future__ import print_function
import time
import unwired
from unwired.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = unwired.GEOLOCATIONApi()

#cell schema
c1=unwired.CellSchema(lac=38996,cid=40907278)
celldata=[c1]

#Geolocation Schema
geolocation_schema = unwired.GeolocationSchema(token="YOUR_API_KEY",radio="cdma",mcc=310,mnc=404,cells=celldata,address=1)

try:
    # Geolocation
    api_response = api_instance.geolocation(geolocation_schema)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GEOLOCATIONApi->geolocation: %s\n" % e)
