//import unwired.ApiException;
//import com.unwired.client.api.GeolocationApi;


public class GeolocationApiExample {

    public static void main(String[] args) {
        
        GeolocationApi apiInstance = new GeolocationApi();
        GeolocationSchema geolocationSchema = new GeolocationSchema(); // GeolocationSchema | 

        //CellSchema
        CellSchema c1=new CellSchema();
        c1.radio("umts");
        c1.mcc(310);
        c1.mnc(404);
        c1.lac(7033);
        c1.cid(17811);

        CellSchema c2 = new CellSchema();
        c2.radio("gsm");
        c2.mcc(310);
        c2.mnc(404);
        c2.lac(7033);
        c2.cid(17812);
        c2.signal(-60);
        c2.ta(13);


        List celldata = new ArrayList();
        celldata.add(c1);
        celldata.add(c2);
        
        geolocationSchema.token("key");
        geolocationSchema.radio("gsm")
        geolocationSchema.mcc(310);
        geolocationSchema.mnc(404);
        geolocationSchema.cells(celldata); 
        geolocationSchema.address(AddressSchema.NUMBER_1);
        
        try {
            Object result = apiInstance.geolocation(geolocationSchema);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling GeolocationApi#geolocation");
            e.printStackTrace();
        }
    }
}


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
