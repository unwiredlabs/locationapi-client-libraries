use std::rc::Rc;

use hyper;
use super::configuration::Configuration;

pub struct APIClient<C: hyper::client::Connect> {
  configuration: Rc<Configuration<C>>,
  balance_api: Box<::apis::BALANCEApi>,
  geolocation_api: Box<::apis::GEOLOCATIONApi>,
  reverse_api: Box<::apis::REVERSEApi>,
  search_api: Box<::apis::SEARCHApi>,
  timezone_api: Box<::apis::TimezoneApi>,
}

impl<C: hyper::client::Connect> APIClient<C> {
  pub fn new(configuration: Configuration<C>) -> APIClient<C> {
    let rc = Rc::new(configuration);

    APIClient {
      configuration: rc.clone(),
      balance_api: Box::new(::apis::BALANCEApiClient::new(rc.clone())),
      geolocation_api: Box::new(::apis::GEOLOCATIONApiClient::new(rc.clone())),
      reverse_api: Box::new(::apis::REVERSEApiClient::new(rc.clone())),
      search_api: Box::new(::apis::SEARCHApiClient::new(rc.clone())),
      timezone_api: Box::new(::apis::TimezoneApiClient::new(rc.clone())),
    }
  }

  pub fn balance_api(&self) -> &::apis::BALANCEApi{
    self.balance_api.as_ref()
  }

  pub fn geolocation_api(&self) -> &::apis::GEOLOCATIONApi{
    self.geolocation_api.as_ref()
  }

  pub fn reverse_api(&self) -> &::apis::REVERSEApi{
    self.reverse_api.as_ref()
  }

  pub fn search_api(&self) -> &::apis::SEARCHApi{
    self.search_api.as_ref()
  }

  pub fn timezone_api(&self) -> &::apis::TimezoneApi{
    self.timezone_api.as_ref()
  }


}
