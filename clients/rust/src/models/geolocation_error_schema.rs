/* 
 * Location API
 *
 * Geolocation, Geocoding and Maps
 *
 * OpenAPI spec version: 2.0.0
 * 
 * Generated by: https://openapi-generator.tech
 */


#[allow(unused_imports)]
use serde_json::Value;

#[derive(Debug, Serialize, Deserialize)]
pub struct GeolocationErrorSchema {
  /// If the request is successful, ok is returned. Otherwise error is returned
  #[serde(rename = "status")]
  status: Option<String>,
  /// Any additional information from the server is returned here
  #[serde(rename = "message")]
  message: Option<String>,
  /// This represents the remaining balance on the API token. Requests that return error are not charged and do not affect balance.
  #[serde(rename = "balance")]
  balance: Option<i64>
}

impl GeolocationErrorSchema {
  pub fn new() -> GeolocationErrorSchema {
    GeolocationErrorSchema {
      status: None,
      message: None,
      balance: None
    }
  }

  pub fn set_status(&mut self, status: String) {
    self.status = Some(status);
  }

  pub fn with_status(mut self, status: String) -> GeolocationErrorSchema {
    self.status = Some(status);
    self
  }

  pub fn status(&self) -> Option<&String> {
    self.status.as_ref()
  }

  pub fn reset_status(&mut self) {
    self.status = None;
  }

  pub fn set_message(&mut self, message: String) {
    self.message = Some(message);
  }

  pub fn with_message(mut self, message: String) -> GeolocationErrorSchema {
    self.message = Some(message);
    self
  }

  pub fn message(&self) -> Option<&String> {
    self.message.as_ref()
  }

  pub fn reset_message(&mut self) {
    self.message = None;
  }

  pub fn set_balance(&mut self, balance: i64) {
    self.balance = Some(balance);
  }

  pub fn with_balance(mut self, balance: i64) -> GeolocationErrorSchema {
    self.balance = Some(balance);
    self
  }

  pub fn balance(&self) -> Option<&i64> {
    self.balance.as_ref()
  }

  pub fn reset_balance(&mut self) {
    self.balance = None;
  }

}



