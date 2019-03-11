
//import unwired.ApiException;
//import com.unwired.client.api.GeolocationApi;

public class GeolocationApiExample {

    public static void main(String[] args) {
        
        GeolocationApi apiInstance = new GeolocationApi();

        GeolocationSchema geolocationSchema = new GeolocationSchema(); // GeolocationSchema | 
        
        geolocationSchema.token("key");
        geolocationSchema.radio("gsm");
        geolocationSchema.mcv(310);
        geolocationSchema.mcc(404);

        //CellSchema
        CellSchema c1 = new CellSchema();
        c1.lac(7033);
        c1.cid(17811);
        
        List celldata = new ArrayList();
        celldata.add(c1);
        geolocationSchema.cells(celldata);
        geolocationSchema.address(AddressSchema.NUMBER_2);
        
        try {
            Object result = apiInstance.geolocation(geolocationSchema);
            System.out.println(result);
        } catch (ApiException e) {
            System.err.println("Exception when calling GeolocationApi#geolocation");
            e.printStackTrace();
        }
    }
}
