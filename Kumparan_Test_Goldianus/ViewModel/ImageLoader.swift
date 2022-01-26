//
//  ImageLoader.swift
//  Kumparan_Test_Goldianus
//
//  Created by Goldianus Solangius on 26/01/22.
//

import Foundation

class ImageLoader: ObservableObject {
    @Published var downloadData: Data?
    
    func downloadImage(url: String){
        guard let imageURL = URL(string: url) else{
          return
        }
        
        URLSession.shared.dataTask(with: imageURL) { data, _, error in
            guard let data = data, error == nil else{
                return
            }
            DispatchQueue.main.async {
                self.downloadData = data
            }
            
        }.resume()
        
    }
}
