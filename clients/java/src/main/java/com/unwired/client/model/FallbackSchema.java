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
import com.google.gson.TypeAdapter;
import com.google.gson.annotations.JsonAdapter;
import com.google.gson.annotations.SerializedName;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import com.unwired.client.model.AllSchema;
import com.unwired.client.model.IpfSchema;
import com.unwired.client.model.LacfSchema;
import com.unwired.client.model.ScfSchema;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import java.io.IOException;

/**
 * An array of fallback options to enable or disable.
 */
@ApiModel(description = "An array of fallback options to enable or disable.")

public class FallbackSchema {
  public static final String SERIALIZED_NAME_ALL = "all";
  @SerializedName(SERIALIZED_NAME_ALL)
  private AllSchema all = null;

  public static final String SERIALIZED_NAME_IPF = "ipf";
  @SerializedName(SERIALIZED_NAME_IPF)
  private IpfSchema ipf = null;

  public static final String SERIALIZED_NAME_LACF = "lacf";
  @SerializedName(SERIALIZED_NAME_LACF)
  private LacfSchema lacf = null;

  public static final String SERIALIZED_NAME_SCF = "scf";
  @SerializedName(SERIALIZED_NAME_SCF)
  private ScfSchema scf = null;

  public FallbackSchema all(AllSchema all) {
    this.all = all;
    return this;
  }

   /**
   * Get all
   * @return all
  **/
  @ApiModelProperty(value = "")
  public AllSchema getAll() {
    return all;
  }

  public void setAll(AllSchema all) {
    this.all = all;
  }

  public FallbackSchema ipf(IpfSchema ipf) {
    this.ipf = ipf;
    return this;
  }

   /**
   * Get ipf
   * @return ipf
  **/
  @ApiModelProperty(value = "")
  public IpfSchema getIpf() {
    return ipf;
  }

  public void setIpf(IpfSchema ipf) {
    this.ipf = ipf;
  }

  public FallbackSchema lacf(LacfSchema lacf) {
    this.lacf = lacf;
    return this;
  }

   /**
   * Get lacf
   * @return lacf
  **/
  @ApiModelProperty(value = "")
  public LacfSchema getLacf() {
    return lacf;
  }

  public void setLacf(LacfSchema lacf) {
    this.lacf = lacf;
  }

  public FallbackSchema scf(ScfSchema scf) {
    this.scf = scf;
    return this;
  }

   /**
   * Get scf
   * @return scf
  **/
  @ApiModelProperty(value = "")
  public ScfSchema getScf() {
    return scf;
  }

  public void setScf(ScfSchema scf) {
    this.scf = scf;
  }


  @Override
  public boolean equals(java.lang.Object o) {
    if (this == o) {
      return true;
    }
    if (o == null || getClass() != o.getClass()) {
      return false;
    }
    FallbackSchema fallbackSchema = (FallbackSchema) o;
    return Objects.equals(this.all, fallbackSchema.all) &&
        Objects.equals(this.ipf, fallbackSchema.ipf) &&
        Objects.equals(this.lacf, fallbackSchema.lacf) &&
        Objects.equals(this.scf, fallbackSchema.scf);
  }

  @Override
  public int hashCode() {
    return Objects.hash(all, ipf, lacf, scf);
  }


  @Override
  public String toString() {
    StringBuilder sb = new StringBuilder();
    sb.append("class FallbackSchema {\n");
    
    sb.append("    all: ").append(toIndentedString(all)).append("\n");
    sb.append("    ipf: ").append(toIndentedString(ipf)).append("\n");
    sb.append("    lacf: ").append(toIndentedString(lacf)).append("\n");
    sb.append("    scf: ").append(toIndentedString(scf)).append("\n");
    sb.append("}");
    return sb.toString();
  }

  /**
   * Convert the given object to string with each line indented by 4 spaces
   * (except the first line).
   */
  private String toIndentedString(java.lang.Object o) {
    if (o == null) {
      return "null";
    }
    return o.toString().replace("\n", "\n    ");
  }

}

