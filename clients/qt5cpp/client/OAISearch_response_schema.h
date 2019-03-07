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
 * OAISearch_response_schema.h
 *
 * 
 */

#ifndef OAISearch_response_schema_H_
#define OAISearch_response_schema_H_

#include <QJsonObject>


#include "OAIAddress_schema.h"
#include "OAINumber.h"
#include <QList>
#include <QString>

#include "OAIObject.h"

namespace OpenAPI {

class OAISearch_response_schema: public OAIObject {
public:
    OAISearch_response_schema();
    OAISearch_response_schema(QString json);
    ~OAISearch_response_schema();
    void init();
    void cleanup();

    QString asJson () override;
    QJsonObject asJsonObject() override;
    void fromJsonObject(QJsonObject json) override;
    OAISearch_response_schema* fromJson(QString jsonString) override;

    QString* getStatus();
    void setStatus(QString* status);

    OAINumber* getBalance();
    void setBalance(OAINumber* balance);

    QList<OAIAddress_schema*>* getAddresses();
    void setAddresses(QList<OAIAddress_schema*>* addresses);


    virtual bool isSet() override;

private:
    QString* status;
    bool m_status_isSet;

    OAINumber* balance;
    bool m_balance_isSet;

    QList<OAIAddress_schema*>* addresses;
    bool m_addresses_isSet;

};

}

#endif /* OAISearch_response_schema_H_ */