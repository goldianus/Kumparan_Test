//
//  CommendModel.swift
//  Kumparan_Test_Goldianus
//
//  Created by Goldianus Solangius on 23/01/22.
//

import Foundation


struct CommandModal: Codable, Identifiable {

    let postId: Int
    let id: Int
    let name: String
    let email: String
    let body: String

    private enum CodingKeys: String, CodingKey {
        case postId = "postId"
        case id = "id"
        case name = "name"
        case email = "email"
        case body = "body"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        postId = try values.decode(Int.self, forKey: .postId)
        id = try values.decode(Int.self, forKey: .id)
        name = try values.decode(String.self, forKey: .name)
        email = try values.decode(String.self, forKey: .email)
        body = try values.decode(String.self, forKey: .body)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(postId, forKey: .postId)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(email, forKey: .email)
        try container.encode(body, forKey: .body)
    }

}
