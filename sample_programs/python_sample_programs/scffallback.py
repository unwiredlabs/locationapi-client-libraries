from __future__ import print_function
import time
import unwired
from unwired.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = unwired.GEOLOCATIONApi()

#cell schema 
c=unwired.CellSchema(lac=38996,cid=12814)
celldata=[c]

#fallback schema
f=unwired.FallbackSchema(scf=2)

# GeolocationSchema | 
geolocation_schema = unwired.GeolocationSchema(token="YOUR_API_KEY",
    radio="utms",mcc=310,mnc=404,cells=celldata,fallbacks=f,
    address=1) 


try:
    # Geolocation
    api_response = api_instance.geolocation(geolocation_schema)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GEOLOCATIONApi->geolocation: %s\n" % e)
