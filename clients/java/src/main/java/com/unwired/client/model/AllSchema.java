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
 * Enable or disable all fallbacks.
 */
@JsonAdapter(AllSchema.Adapter.class)
public enum AllSchema {
  
  NUMBER_0(0),
  
  NUMBER_1(1);

  private Integer value;

  AllSchema(Integer value) {
    this.value = value;
  }

  public Integer getValue() {
    return value;
  }

  @Override
  public String toString() {
    return String.valueOf(value);
  }

  public static AllSchema fromValue(String text) {
    for (AllSchema b : AllSchema.values()) {
      if (String.valueOf(b.value).equals(text)) {
        return b;
      }
    }
    throw new IllegalArgumentException("Unexpected value '" + text + "'");
  }

  public static class Adapter extends TypeAdapter<AllSchema> {
    @Override
    public void write(final JsonWriter jsonWriter, final AllSchema enumeration) throws IOException {
      jsonWriter.value(enumeration.getValue());
    }

    @Override
    public AllSchema read(final JsonReader jsonReader) throws IOException {
      Integer value = jsonReader.nextInt();
      return AllSchema.fromValue(String.valueOf(value));
    }
  }
}

