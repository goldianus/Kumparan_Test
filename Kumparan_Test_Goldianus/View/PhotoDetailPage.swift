//
//  PhotoDetailPage.swift
//  Kumparan_Test_Goldianus
//
//  Created by Goldianus Solangius on 23/01/22.
//

import SwiftUI

struct PhotoDetailPage: View {
    
    var body: some View {

        PhotoDetail()
    }
}

struct PhotoDetail: View {
    @State private var zoomed = false
    
    
    var body: some View {
        VStack {
            Text("Photo Tittle")
                
            Text ("Full size photo with zoom capability")
        }
    }
}


struct PhotoDetailPage_Previews: PreviewProvider {
    static var previews: some View {
        PhotoDetailPage()
    }
}
