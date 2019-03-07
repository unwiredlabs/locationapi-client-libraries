=begin
#Location API

#Geolocation, Geocoding and Maps

OpenAPI spec version: 2.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'date'

module unwiredClient
  class RadioSchema
    
    GSM = '\"gsm\"'.freeze
    UTMS = '\"utms\"'.freeze
    CDMA = '\"cdma\"'.freeze
    LTE = '\"lte\"'.freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = RadioSchema.constants.select { |c| RadioSchema::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #RadioSchema" if constantValues.empty?
      value
    end
  end
end