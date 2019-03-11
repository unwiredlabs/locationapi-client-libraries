QT += network

HEADERS += \
# Models
    $${PWD}/OAIAddress_details_schema.h \
    $${PWD}/OAIAddress_schema.h \
    $${PWD}/OAIAll_schema.h \
    $${PWD}/OAIBalance_response_schema.h \
    $${PWD}/OAIBt_schema.h \
    $${PWD}/OAICell_schema.h \
    $${PWD}/OAIError_schema.h \
    $${PWD}/OAIFallback_schema.h \
    $${PWD}/OAIGeolocation_address_schema.h \
    $${PWD}/OAIGeolocation_error_schema.h \
    $${PWD}/OAIGeolocation_response_schema.h \
    $${PWD}/OAIGeolocation_schema.h \
    $${PWD}/OAIIpf_schema.h \
    $${PWD}/OAILacf_schema.h \
    $${PWD}/OAIRadio_schema.h \
    $${PWD}/OAIReverse_response_schema.h \
    $${PWD}/OAIScf_schema.h \
    $${PWD}/OAISearch_response_schema.h \
    $${PWD}/OAITimezone_response_schema.h \
    $${PWD}/OAITimezone_schema.h \
    $${PWD}/OAIWifi_schema.h \
# APIs
    $${PWD}/OAIBALANCEApi.h \
    $${PWD}/OAIGEOLOCATIONApi.h \
    $${PWD}/OAIREVERSEApi.h \
    $${PWD}/OAISEARCHApi.h \
    $${PWD}/OAITimezoneApi.h \
# Others
    $${PWD}/OAIHelpers.h \
    $${PWD}/OAIHttpRequest.h \
    $${PWD}/OAIModelFactory.h \
    $${PWD}/OAIObject.h \
    $${PWD}/OAIQObjectWrapper.h

SOURCES += \
# Models
    $${PWD}/OAIAddress_details_schema.cpp \
    $${PWD}/OAIAddress_schema.cpp \
    $${PWD}/OAIAll_schema.cpp \
    $${PWD}/OAIBalance_response_schema.cpp \
    $${PWD}/OAIBt_schema.cpp \
    $${PWD}/OAICell_schema.cpp \
    $${PWD}/OAIError_schema.cpp \
    $${PWD}/OAIFallback_schema.cpp \
    $${PWD}/OAIGeolocation_address_schema.cpp \
    $${PWD}/OAIGeolocation_error_schema.cpp \
    $${PWD}/OAIGeolocation_response_schema.cpp \
    $${PWD}/OAIGeolocation_schema.cpp \
    $${PWD}/OAIIpf_schema.cpp \
    $${PWD}/OAILacf_schema.cpp \
    $${PWD}/OAIRadio_schema.cpp \
    $${PWD}/OAIReverse_response_schema.cpp \
    $${PWD}/OAIScf_schema.cpp \
    $${PWD}/OAISearch_response_schema.cpp \
    $${PWD}/OAITimezone_response_schema.cpp \
    $${PWD}/OAITimezone_schema.cpp \
    $${PWD}/OAIWifi_schema.cpp \
# APIs
    $${PWD}/OAIBALANCEApi.cpp \
    $${PWD}/OAIGEOLOCATIONApi.cpp \
    $${PWD}/OAIREVERSEApi.cpp \
    $${PWD}/OAISEARCHApi.cpp \
    $${PWD}/OAITimezoneApi.cpp \
# Others
    $${PWD}/OAIHelpers.cpp \
    $${PWD}/OAIHttpRequest.cpp

