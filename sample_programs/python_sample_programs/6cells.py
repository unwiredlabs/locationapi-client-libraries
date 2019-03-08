from __future__ import print_function
import time
import unwired
from unwired.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = unwired.GEOLOCATIONApi()

#cell schema
c1=unwired.CellSchema(lac=7033,cid=17811)
c2=unwired.CellSchema(lac=7033,cid=17812,signal=-60,ta=13)
c3=unwired.CellSchema(lac=7033,cid=18513)
c4=unwired.CellSchema(lac=7033,cid=16383)
c5=unwired.CellSchema(lac=7033,cid=12812)
c6=unwired.CellSchema(lac=7033,cid=12811) 
celldata=[c1,c2,c3,c4,c5,c6]

# GeolocationSchema
geolocation_schema = unwired.GeolocationSchema(token="YOUR_API_KEY",radio="gsm",mcc=310,mnc=404,cells=celldata,address=1)  

try:
    # Geolocation
    api_response = api_instance.geolocation(geolocation_schema)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GEOLOCATIONApi->geolocation: %s\n" % e)
