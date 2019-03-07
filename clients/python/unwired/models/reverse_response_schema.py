# coding: utf-8

"""
    Location API

    Geolocation, Geocoding and Maps  # noqa: E501

    OpenAPI spec version: 2.0.0
    Generated by: https://openapi-generator.tech
"""


import pprint
import re  # noqa: F401

import six


class ReverseResponseSchema(object):
    """NOTE: This class is auto generated by OpenAPI Generator.
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """

    """
    Attributes:
      openapi_types (dict): The key is attribute name
                            and the value is attribute type.
      attribute_map (dict): The key is attribute name
                            and the value is json key in definition.
    """
    openapi_types = {
        'status': 'str',
        'balance': 'int',
        'address': 'AddressSchema'
    }

    attribute_map = {
        'status': 'status',
        'balance': 'balance',
        'address': 'address'
    }

    def __init__(self, status=None, balance=None, address=None):  # noqa: E501
        """ReverseResponseSchema - a model defined in OpenAPI"""  # noqa: E501

        self._status = None
        self._balance = None
        self._address = None
        self.discriminator = None

        if status is not None:
            self.status = status
        if balance is not None:
            self.balance = balance
        if address is not None:
            self.address = address

    @property
    def status(self):
        """Gets the status of this ReverseResponseSchema.  # noqa: E501

        If the request is successful, ok is returned. Otherwise error is returned  # noqa: E501

        :return: The status of this ReverseResponseSchema.  # noqa: E501
        :rtype: str
        """
        return self._status

    @status.setter
    def status(self, status):
        """Sets the status of this ReverseResponseSchema.

        If the request is successful, ok is returned. Otherwise error is returned  # noqa: E501

        :param status: The status of this ReverseResponseSchema.  # noqa: E501
        :type: str
        """

        self._status = status

    @property
    def balance(self):
        """Gets the balance of this ReverseResponseSchema.  # noqa: E501

        Balance left in the account  # noqa: E501

        :return: The balance of this ReverseResponseSchema.  # noqa: E501
        :rtype: int
        """
        return self._balance

    @balance.setter
    def balance(self, balance):
        """Sets the balance of this ReverseResponseSchema.

        Balance left in the account  # noqa: E501

        :param balance: The balance of this ReverseResponseSchema.  # noqa: E501
        :type: int
        """

        self._balance = balance

    @property
    def address(self):
        """Gets the address of this ReverseResponseSchema.  # noqa: E501


        :return: The address of this ReverseResponseSchema.  # noqa: E501
        :rtype: AddressSchema
        """
        return self._address

    @address.setter
    def address(self, address):
        """Sets the address of this ReverseResponseSchema.


        :param address: The address of this ReverseResponseSchema.  # noqa: E501
        :type: AddressSchema
        """

        self._address = address

    def to_dict(self):
        """Returns the model properties as a dict"""
        result = {}

        for attr, _ in six.iteritems(self.openapi_types):
            value = getattr(self, attr)
            if isinstance(value, list):
                result[attr] = list(map(
                    lambda x: x.to_dict() if hasattr(x, "to_dict") else x,
                    value
                ))
            elif hasattr(value, "to_dict"):
                result[attr] = value.to_dict()
            elif isinstance(value, dict):
                result[attr] = dict(map(
                    lambda item: (item[0], item[1].to_dict())
                    if hasattr(item[1], "to_dict") else item,
                    value.items()
                ))
            else:
                result[attr] = value

        return result

    def to_str(self):
        """Returns the string representation of the model"""
        return pprint.pformat(self.to_dict())

    def __repr__(self):
        """For `print` and `pprint`"""
        return self.to_str()

    def __eq__(self, other):
        """Returns true if both objects are equal"""
        if not isinstance(other, ReverseResponseSchema):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
