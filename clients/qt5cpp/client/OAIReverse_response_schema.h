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
 * OAIReverse_response_schema.h
 *
 * 
 */

#ifndef OAIReverse_response_schema_H_
#define OAIReverse_response_schema_H_

#include <QJsonObject>


#include "OAIAddress_schema.h"
#include <QString>

#include "OAIObject.h"

namespace OpenAPI {

class OAIReverse_response_schema: public OAIObject {
public:
    OAIReverse_response_schema();
    OAIReverse_response_schema(QString json);
    ~OAIReverse_response_schema();
    void init();
    void cleanup();

    QString asJson () override;
    QJsonObject asJsonObject() override;
    void fromJsonObject(QJsonObject json) override;
    OAIReverse_response_schema* fromJson(QString jsonString) override;

    QString* getStatus();
    void setStatus(QString* status);

    qint64 getBalance();
    void setBalance(qint64 balance);

    OAIAddress_schema* getAddress();
    void setAddress(OAIAddress_schema* address);


    virtual bool isSet() override;

private:
    QString* status;
    bool m_status_isSet;

    qint64 balance;
    bool m_balance_isSet;

    OAIAddress_schema* address;
    bool m_address_isSet;

};

}

#endif /* OAIReverse_response_schema_H_ */
