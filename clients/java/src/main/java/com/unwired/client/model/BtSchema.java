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


package com.unwired.client.model;

import java.util.Objects;
import java.util.Arrays;
import io.swagger.annotations.ApiModel;
import com.google.gson.annotations.SerializedName;

import java.io.IOException;
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;

/**
 * Specify level of strictness to apply to Borders
 */
@JsonAdapter(BtSchema.Adapter.class)
public enum BtSchema {
  
  NUMBER_0(0),
  
  NUMBER_1(1),
  
  NUMBER_2(2);

  private Integer value;

  BtSchema(Integer value) {
    this.value = value;
  }

  public Integer getValue() {
    return value;
  }

  @Override
  public String toString() {
    return String.valueOf(value);
  }

  public static BtSchema fromValue(String text) {
    for (BtSchema b : BtSchema.values()) {
      if (String.valueOf(b.value).equals(text)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + text + "'");
  }

  public static class Adapter extends TypeAdapter<BtSchema> {
    @Override
    public void write(final JsonWriter jsonWriter, final BtSchema enumeration) throws IOException {
      jsonWriter.value(enumeration.getValue());
    }

    @Override
    public BtSchema read(final JsonReader jsonReader) throws IOException {
      Integer value = jsonReader.nextInt();
      return BtSchema.fromValue(String.valueOf(value));
    }
  }
}

