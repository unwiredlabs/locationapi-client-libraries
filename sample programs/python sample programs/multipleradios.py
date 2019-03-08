from __future__ import print_function
import time
import unwired
from unwired.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = unwired.GEOLOCATIONApi()

#cell schema
c1=unwired.CellSchema(radio="umts",mcc=310,mnc=404,lac=7033,cid=17811)
c2=unwired.CellSchema(radio="gsm",mcc=310,mnc=404,lac=7033,cid=17812,signal=-60,ta=13)
celldata=[c1,c2]

# GeolocationSchema
geolocation_schema = unwired.GeolocationSchema(token="YOUR_API_KEY",radio="gsm",mcc=310,mnc=404,cells=celldata,address=1) 

try:
    # Geolocation
    api_response = api_instance.geolocation(geolocation_schema)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GEOLOCATIONApi->geolocation: %s\n" % e)
