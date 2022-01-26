//
//  PhotoViewModel.swift
//  Kumparan_Test_Goldianus
//
//  Created by Goldianus Solangius on 23/01/22.
//

import Foundation
import SwiftUI

class PhotoListVieModel : ObservableObject {
    @Published public private(set) var photo: [PhotoViewModel] = []
    
}

class PhotoViewModel: Identifiable, ObservableObject {
    let id: Int
    let title: String
    let url : String

    @Published var thumbnail: Image?
    
    init(photo: PhotosModal){
        self.id =  photo.id
        self.title = photo.title
        self.url = photo.url
        
    }
}



//func getDataPhotos(completion:@escaping ([Post]) -> ()) {
//    guard let url = URL(string: "https://jsonplaceholder.typicode.com/photos") else {return}
//
//    URLSession.shared.dataTask(with: url) { (data, _, _) in
//
//        let posts = try! JSONDecoder().decode([Post].self, from: data!)
//        print(posts)
//
//        DispatchQueue.main.async {
//            completion(posts)
//        }
//    }
//    .resume()
//}
