//
// GeolocationErrorSchema.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation



public struct GeolocationErrorSchema: Codable {

    /** If the request is successful, ok is returned. Otherwise error is returned */
    public var status: String?
    /** Any additional information from the server is returned here */
    public var message: String?
    /** This represents the remaining balance on the API token. Requests that return error are not charged and do not affect balance. */
    public var balance: Int64?

    public init(status: String?, message: String?, balance: Int64?) {
        self.status = status
        self.message = message
        self.balance = balance
    }


}

