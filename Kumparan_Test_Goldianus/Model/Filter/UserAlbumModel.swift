//
//  UserAlbumVm.swift
//  Kumparan_Test_Goldianus
//
//  Created by Goldianus Solangius on 26/01/22.
//

import Foundation


struct UserAlbumModel: Codable {

    let userId: Int
    let id: Int
    let title: String

    private enum CodingKeys: String, CodingKey {
        case userId = "userId"
        case id = "id"
        case title = "title"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        userId = try values.decode(Int.self, forKey: .userId)
        id = try values.decode(Int.self, forKey: .id)
        title = try values.decode(String.self, forKey: .title)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(userId, forKey: .userId)
        try container.encode(id, forKey: .id)
        try container.encode(title, forKey: .title)
    }

}
