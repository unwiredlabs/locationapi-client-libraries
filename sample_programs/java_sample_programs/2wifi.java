//import unwired.ApiException;
//import com.unwired.client.api.GeolocationApi;
public class GeolocationApiExample {

    public static void main(String[] args) {
        
     GeolocationApi apiInstance = new GeolocationApi();
    GeolocationSchema geolocationSchema = new GeolocationSchema(); // GeolocationSchema | 

    //WifiSchema
    WifiSchema w1 = new WifiSchema();
    w1.bssid("00:17:c5:cd:ca:aa");
    w1.channel(11);
    w1.frequency(212);
    w1.singnal(-51);

    WifiSchema w2 = new WifiSchema();
    w2.bssid("d8:97:ba:c2:f0:5a");

    List wifidata = new WifiSchema();
    wifidata.add(w2);
    wifidata.add(w1);

    geolocationSchema.token("YOUR_API_TOKEN");
    
    geolocationSchema.wifi(wifidata);
    
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
