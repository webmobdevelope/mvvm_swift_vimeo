//
//  AccessToken.swift
//  namava
//
//  Created by Behnam on 16.10.22.
//

import Foundation

// MARK: - AccessToken
class AccessToken: Codable {
    var accessToken, tokenType, scope: String?
    var app: Appp?

    enum CodingKeys: String, CodingKey {
        case accessToken = "access_token"
        case tokenType = "token_type"
        case scope, app
    }

    init(accessToken: String?, tokenType: String?, scope: String?, app: Appp?) {
        self.accessToken = accessToken
        self.tokenType = tokenType
        self.scope = scope
        self.app = app
    }
}

// MARK: AccessToken convenience initializers and mutators

extension AccessToken {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(AccessToken.self, from: data)
        self.init(accessToken: me.accessToken, tokenType: me.tokenType, scope: me.scope, app: me.app)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        accessToken: String?? = nil,
        tokenType: String?? = nil,
        scope: String?? = nil,
        app: Appp?? = nil
    ) -> AccessToken {
        return AccessToken(
            accessToken: accessToken ?? self.accessToken,
            tokenType: tokenType ?? self.tokenType,
            scope: scope ?? self.scope,
            app: app ?? self.app
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Appp
class Appp: Codable {
    var name, uri: String?

    init(name: String?, uri: String?) {
        self.name = name
        self.uri = uri
    }
}

// MARK: Appp convenience initializers and mutators

extension Appp {
    convenience init(data: Data) throws {
        let me = try newJSONDecoder().decode(Appp.self, from: data)
        self.init(name: me.name, uri: me.uri)
    }

    convenience init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    convenience init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        name: String?? = nil,
        uri: String?? = nil
    ) -> Appp {
        return Appp(
            name: name ?? self.name,
            uri: uri ?? self.uri
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

