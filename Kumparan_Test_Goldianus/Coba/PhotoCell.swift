//
//  PhotoCell.swift
//  Kumparan_Test_Goldianus
//
//  Created by Goldianus Solangius on 25/01/22.
//

import SwiftUI

struct PhotoCell: View {
    var photosd : [Photoss] = []
    
    var body: some View {
        NavigationView {
           
            List(photosd) { item in
                CellView(item: item)
              
            }
            .navigationBarTitle(Text("Photos"))
        }
    }
}
#if DEBUG
struct PhotoCell_Previews: PreviewProvider {
    static var previews: some View {
        PhotoCell(photosd: dataCoba)
    }
}
#endif

struct CellView: View {
    let item: Photoss
    var body: some View {
        NavigationLink(destination: DetailPhoto(item: item)) {
            HStack () {
                Image(item.tumbhnailName)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .cornerRadius(15)
                
                Text(item.name)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
