//
//  UserModel.swift
//  Kumparan_Test_Goldianus
//
//  Created by Goldianus Solangius on 22/01/22.
//

import Foundation

struct UserModal: Codable, Hashable, Identifiable {

    let id: Int
    let name: String
    let username: String
    let email: String
    let address: Address
    let phone: String
    let website: String
    let company: Company

    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case username = "username"
        case email = "email"
        case address = "address"
        case phone = "phone"
        case website = "website"
        case company = "company"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decode(Int.self, forKey: .id)
        name = try values.decode(String.self, forKey: .name)
        username = try values.decode(String.self, forKey: .username)
        email = try values.decode(String.self, forKey: .email)
        address = try values.decode(Address.self, forKey: .address)
        phone = try values.decode(String.self, forKey: .phone)
        website = try values.decode(String.self, forKey: .website)
        company = try values.decode(Company.self, forKey: .company)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(username, forKey: .username)
        try container.encode(email, forKey: .email)
        try container.encode(address, forKey: .address)
        try container.encode(phone, forKey: .phone)
        try container.encode(website, forKey: .website)
        try container.encode(company, forKey: .company)
    }
}


struct Address: Codable, Hashable {

    let street: String
    let suite: String
    let city: String
    let zipcode: String
    let geo: Geo

    private enum CodingKeys: String, CodingKey {
        case street = "street"
        case suite = "suite"
        case city = "city"
        case zipcode = "zipcode"
        case geo = "geo"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        street = try values.decode(String.self, forKey: .street)
        suite = try values.decode(String.self, forKey: .suite)
        city = try values.decode(String.self, forKey: .city)
        zipcode = try values.decode(String.self, forKey: .zipcode)
        geo = try values.decode(Geo.self, forKey: .geo)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(street, forKey: .street)
        try container.encode(suite, forKey: .suite)
        try container.encode(city, forKey: .city)
        try container.encode(zipcode, forKey: .zipcode)
        try container.encode(geo, forKey: .geo)
    }

}

struct Geo: Codable, Hashable {

    let lat: String
    let lng: String

    private enum CodingKeys: String, CodingKey {
        case lat = "lat"
        case lng = "lng"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        lat = try values.decode(String.self, forKey: .lat)
        lng = try values.decode(String.self, forKey: .lng)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(lat, forKey: .lat)
        try container.encode(lng, forKey: .lng)
    }

}

struct Company: Codable, Hashable {

    let name: String
    let catchPhrase: String
    let bs: String

    private enum CodingKeys: String, CodingKey {
        case name = "name"
        case catchPhrase = "catchPhrase"
        case bs = "bs"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decode(String.self, forKey: .name)
        catchPhrase = try values.decode(String.self, forKey: .catchPhrase)
        bs = try values.decode(String.self, forKey: .bs)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(catchPhrase, forKey: .catchPhrase)
        try container.encode(bs, forKey: .bs)
    }

}
