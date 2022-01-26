//
//  PhotoListView.swift
//  Kumparan_Test_Goldianus
//
//  Created by Goldianus Solangius on 25/01/22.
//

import SwiftUI

struct PhotoListView: View {
    @ObservedObject var photoView: PhotoListVieModel
    
    var body: some View {
        VStack {
            Text ("hello word")
              List (photoView.photo) { photo in
                  PhotoView (photo: photo)
              }.listStyle(PlainListStyle())
        }
      
    }
}


struct PhotoView : View {
    @ObservedObject var photo : PhotoViewModel
    var body: some View {
        HStack {
            ThumbView (image: photo.thumbnail)
                .padding(.trailing)
            Text(photo.title)
        }
       
    }
}

struct ThumbView : View {
    let image : Image?
    var body: some View {
        ZStack {
            if image != nil {
                image
            } else {
                Color(.systemIndigo)
                Image(systemName: "photo.note")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                
            }
        }
        .frame(width: 50, height: 50)
        .shadow(radius: 5)
        .padding(.trailing, 5)
    }
}

struct PhotoListView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoListView(photoView: PhotoListVieModel())
    }
}
