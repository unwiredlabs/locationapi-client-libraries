//import unwired.ApiException;
//import com.unwired.client.api.GeolocationApi;


public class GeolocationApiExample {

    public static void main(String[] args) {
        
        GeolocationApi apiInstance = new GeolocationApi();
        GeolocationSchema geolocationSchema = new GeolocationSchema(); // GeolocationSchema | 
        
        geolocationSchema.token("key");
        geolocationSchema.ip("49.204.218.106");
        geolocationSchema.fallbacks(new FallbackSchema().ipf(IpfSchema.NUMBER_1));
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
