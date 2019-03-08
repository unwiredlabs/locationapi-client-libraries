//import unwired.ApiException;
//import com.unwired.client.api.GeolocationApi;


public class GeolocationApiExample {

    public static void main(String[] args) {
        
     GeolocationApi apiInstance = new GeolocationApi();
    GeolocationSchema geolocationSchema = new GeolocationSchema(); // GeolocationSchema | 


    //CellSchema 
    CellSchema c1=new CellSchema();
    c1.lac(7);
    c1.cid(4864);

    List celldata = new ArrayList();
    celldata.add(c1);


    geolocationSchema.token("YOUR_API_TOKEN");
    geolocationSchema.radio("cdma");
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


