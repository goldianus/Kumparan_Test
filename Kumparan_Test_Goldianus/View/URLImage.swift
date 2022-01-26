//
//  URLImage.swift
//  Kumparan_Test_Goldianus
//
//  Created by Goldianus Solangius on 26/01/22.
//

import SwiftUI

//struct URLImage: View {
//    let url: String
//    let placeholder: String
//    @ObservedObject  var imageLoader = ImageLoader()
//
//    init (url: String, placeholder: String = "Photo1")
//    {
//        self.url = url
//        self.placeholder = placeholder
//        self.imageLoader.downloadImage(url: self.url)
//    }
//
//    var body: some View {
//        if let data = self.imageLoader.downloadData{
//            return Image(uiImage: UIImage(data: data)!).renderingMode(.original).resizable()
//        } else {
//            return Image("").renderingMode(.original).resizable()
//        }
//    }
//}
//
//struct URLImage_Previews: PreviewProvider {
//    static var previews: some View {
//        URLImage(url: "https://jsonplaceholder.typicode.com/photos")
//    }
//}
