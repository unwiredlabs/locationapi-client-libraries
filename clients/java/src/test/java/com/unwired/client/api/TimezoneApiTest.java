/*
 * Location API
 * Geolocation, Geocoding and Maps
 *
 * OpenAPI spec version: 2.0.0
 * 
 *
 * NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
 * https://openapi-generator.tech
 * Do not edit the class manually.
 */


package com.unwired.client.api;

import unwired.ApiException;
import org.junit.Test;
import org.junit.Ignore;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for TimezoneApi
 */
@Ignore
public class TimezoneApiTest {

    private final TimezoneApi api = new TimezoneApi();

    
    /**
     * timezone
     *
     * The Unwired Labs TimeZone API provides time offset data for locations on the surface of the earth.
     *
     * @throws ApiException
     *          if the Api call fails
     */
    @Test
    public void timezoneTest() throws ApiException {
        Double lat = null;
        Double lon = null;
        Object response = api.timezone(lat, lon);

        // TODO: test validations
    }
    
}
