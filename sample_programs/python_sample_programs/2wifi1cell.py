from __future__ import print_function
import time
import unwired
from unwired.rest import ApiException
from pprint import pprint

# create an instance of the API class
api_instance = unwired.GEOLOCATIONApi()
# cell schema
c=unwired.CellSchema(lac=7033,cid=17811)
celldata=[c]

#wifi schema
w1=unwired.WifiSchema(bssid="00:17:c5:cd:ca:aa",channel=11,frequency=2412,signal=-51)
w2=unwired.WifiSchema(bssid="d8:97:ba:c2:f0:5a")
wifidata=[w1,w2]

# GeolocationSchema
geolocation_schema = unwired.GeolocationSchema(token="YOUR_API_KEY",
    radio="gsm",mcc=310,mnc=404,cells=celldata,wifi=wifidata,
    address=1) 
 

try:
    # Geolocation
    api_response = api_instance.geolocation(geolocation_schema)
    pprint(api_response)
except ApiException as e:
    print("Exception when calling GEOLOCATIONApi->geolocation: %s\n" % e)
