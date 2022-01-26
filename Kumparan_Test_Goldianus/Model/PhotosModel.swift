//
//  PhotosModel.swift
//  Kumparan_Test_Goldianus
//
//  Created by Goldianus Solangius on 23/01/22.
//

import Foundation
import SwiftUI

//struct photoResponse: Codable {
//    let photo : [PhotosModal]
//
//    enum CodingKeys: String, CodingKeys{
//        Case photo = "result"
//    }
//}

struct PhotosModal: Decodable {

    let albumId: Int
    let id: Int
    let title: String
    let url: String
    let thumbnailUrl: String

    private enum CodingKeys: String, CodingKey {
        case albumId = "albumId"
        case id = "id"
        case title = "title"
        case url = "url"
        case thumbnailUrl = "thumbnailUrl"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        albumId = try values.decode(Int.self, forKey: .albumId)
        id = try values.decode(Int.self, forKey: .id)
        title = try values.decode(String.self, forKey: .title)
        url = try values.decode(String.self, forKey: .url)
        thumbnailUrl = try values.decode(String.self, forKey: .thumbnailUrl)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(albumId, forKey: .albumId)
        try container.encode(id, forKey: .id)
        try container.encode(title, forKey: .title)
        try container.encode(url, forKey: .url)
        try container.encode(thumbnailUrl, forKey: .thumbnailUrl)
    }
    

}


