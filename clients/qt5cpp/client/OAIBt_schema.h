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
 * OAIBt_schema.h
 *
 * Specify level of strictness to apply to Borders
 */

#ifndef OAIBt_schema_H_
#define OAIBt_schema_H_

#include <QJsonObject>



#include "OAIObject.h"

namespace OpenAPI {

class OAIBt_schema: public OAIObject {
public:
    OAIBt_schema();
    OAIBt_schema(QString json);
    ~OAIBt_schema();
    void init();
    void cleanup();

    QString asJson () override;
    QJsonObject asJsonObject() override;
    void fromJsonObject(QJsonObject json) override;
    OAIBt_schema* fromJson(QString jsonString) override;


    virtual bool isSet() override;

private:
};

}

#endif /* OAIBt_schema_H_ */
