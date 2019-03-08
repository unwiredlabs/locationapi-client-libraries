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

      CellSchema c1=new CellSchema();
    c1.lac(7033);
    c1.cid(17812);

      CellSchema c1=new CellSchema();
    c1.lac(7033);
    c1.cid(18513);

      CellSchema c1=new CellSchema();
    c1.lac(7033);
    c1.cid(16383);
    c1.signal(-60);
    c1.ta(13);

      CellSchema c1=new CellSchema();
    c1.lac(7033);
    c1.cid(12812);

      CellSchema c1=new CellSchema();
    c1.lac(7033);
    c1.cid(12811);

    List celldata = new ArrayList();
    celldata.add(c1);
    celladata.add(c2);
    celladata.add(c3);
    celladata.add(c4);
    celladata.add(c5);
    celladata.add(c6);

    geolocationSchema.token("YOUR_API_TOKEN");
    geolocationSchema.radio("gsm");
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

