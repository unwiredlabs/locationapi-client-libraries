/**
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

/*
 * OAIRadio_schema.h
 *
 * Radio type of the device. Supported values are ‘gsm’, ‘cdma’, ‘umts’ and ‘lte’. This field should be included for more accurate results.
 */

#ifndef OAIRadio_schema_H_
#define OAIRadio_schema_H_

#include <QJsonObject>



#include "OAIObject.h"

namespace OpenAPI {

class OAIRadio_schema: public OAIObject {
public:
    OAIRadio_schema();
    OAIRadio_schema(QString json);
    ~OAIRadio_schema();
    void init();
    void cleanup();

    QString asJson () override;
    QJsonObject asJsonObject() override;
    void fromJsonObject(QJsonObject json) override;
    OAIRadio_schema* fromJson(QString jsonString) override;


    virtual bool isSet() override;

private:
};

}

#endif /* OAIRadio_schema_H_ */
