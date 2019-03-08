//import unwired.ApiException;
//import com.unwired.client.api.GeolocationApi;

public class GeolocationApiExample {

    public static void main(String[] args) {
        
        GeolocationApi apiInstance = new GeolocationApi();
        GeolocationSchema geolocationSchema = new GeolocationSchema(); // GeolocationSchema | 

        //CellSchema
        CellSchema c1=new CellSchema();
        c1.lac(310);
        c1.cid(5632016);

        CellSchema c2 = new CellSchema();
        c2.lac(1);
        c2.psc(221);

        List celldata = new ArrayList();
        cellldata.add(c1);
        
        geolocationSchema.token("key");
        geolocationSchema.radio("lte")
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

