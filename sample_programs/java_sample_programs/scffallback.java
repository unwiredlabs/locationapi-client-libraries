//import unwired.ApiException;
//import com.unwired.client.api.GeolocationApi;


public class GeolocationApiExample {

    public static void main(String[] args) {
        
        GeolocationApi apiInstance = new GeolocationApi();
        GeolocationSchema geolocationSchema = new GeolocationSchema(); // GeolocationSchema | 
        
        //CellSchema
        CellSchema c1=new CellSchema();
        c1.lac(7033);
        c1.cid(17811);

        List celldata = new ArrayList();
        celldata.add(c1);
        
        geolocationSchema.token("key");
        geolocationSchema.cells(celldata);
        geolocationSchema.fallbacks(new FallbackSchema().scf(IpfSchema.NUMBER_1));
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