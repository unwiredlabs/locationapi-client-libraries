from __future__ import print_function
import time
import unwired
from unwired.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = unwired.GEOLOCATIONApi()

#cell schema
c=unwired.CellSchema(radio="gsm",mcc=310,mnc=404,lac=7011,cid=0)
celldata=[c]

#Fallback Schema
f=unwired.FallbackSchema(lacf=2)

# Geolocation Schema
geolocation_schema = unwired.GeolocationSchema(token="YOUR_API_KEY",
    cells=celldata,fallbacks=f,
    address=1) 


try:
    # Geolocation
    api_response = api_instance.geolocation(geolocation_schema)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GEOLOCATIONApi->geolocation: %s\n" % e)

