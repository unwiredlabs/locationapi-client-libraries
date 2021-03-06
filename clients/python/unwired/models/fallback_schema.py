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


class FallbackSchema(object):
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
        'all': 'AllSchema',
        'ipf': 'IpfSchema',
        'lacf': 'LacfSchema',
        'scf': 'ScfSchema'
    }

    attribute_map = {
        'all': 'all',
        'ipf': 'ipf',
        'lacf': 'lacf',
        'scf': 'scf'
    }

    def __init__(self, all=None, ipf=None, lacf=None, scf=None):  # noqa: E501
        """FallbackSchema - a model defined in OpenAPI"""  # noqa: E501

        self._all = None
        self._ipf = None
        self._lacf = None
        self._scf = None
        self.discriminator = None

        if all is not None:
            self.all = all
        if ipf is not None:
            self.ipf = ipf
        if lacf is not None:
            self.lacf = lacf
        if scf is not None:
            self.scf = scf

    @property
    def all(self):
        """Gets the all of this FallbackSchema.  # noqa: E501


        :return: The all of this FallbackSchema.  # noqa: E501
        :rtype: AllSchema
        """
        return self._all

    @all.setter
    def all(self, all):
        """Sets the all of this FallbackSchema.


        :param all: The all of this FallbackSchema.  # noqa: E501
        :type: AllSchema
        """

        self._all = all

    @property
    def ipf(self):
        """Gets the ipf of this FallbackSchema.  # noqa: E501


        :return: The ipf of this FallbackSchema.  # noqa: E501
        :rtype: IpfSchema
        """
        return self._ipf

    @ipf.setter
    def ipf(self, ipf):
        """Sets the ipf of this FallbackSchema.


        :param ipf: The ipf of this FallbackSchema.  # noqa: E501
        :type: IpfSchema
        """

        self._ipf = ipf

    @property
    def lacf(self):
        """Gets the lacf of this FallbackSchema.  # noqa: E501


        :return: The lacf of this FallbackSchema.  # noqa: E501
        :rtype: LacfSchema
        """
        return self._lacf

    @lacf.setter
    def lacf(self, lacf):
        """Sets the lacf of this FallbackSchema.


        :param lacf: The lacf of this FallbackSchema.  # noqa: E501
        :type: LacfSchema
        """

        self._lacf = lacf

    @property
    def scf(self):
        """Gets the scf of this FallbackSchema.  # noqa: E501


        :return: The scf of this FallbackSchema.  # noqa: E501
        :rtype: ScfSchema
        """
        return self._scf

    @scf.setter
    def scf(self, scf):
        """Sets the scf of this FallbackSchema.


        :param scf: The scf of this FallbackSchema.  # noqa: E501
        :type: ScfSchema
        """

        self._scf = scf

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
        if not isinstance(other, FallbackSchema):
            return False

        return self.__dict__ == other.__dict__

    def __ne__(self, other):
        """Returns true if both objects are not equal"""
        return not self == other
