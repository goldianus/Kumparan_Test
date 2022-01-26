//
//  DetailPhoto.swift
//  Kumparan_Test_Goldianus
//
//  Created by Goldianus Solangius on 25/01/22.
//

import SwiftUI

struct DetailPhoto: View {
    
    let item: Photoss
    
    @State private var zoomm = false

    var body: some View {
        Image(item.name)
            .resizable()
//            .frame(width: 200, height: 200)
            .aspectRatio(contentMode: zoomm ? .fill : .fit
            )
            .navigationBarTitle(Text(item.name))
            
        
            .onTapGesture {
                withAnimation { self.zoomm.toggle()}
            }
       
    }
}


#if DEBUG
struct DetailPhoto_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {DetailPhoto(item: dataCoba[0])}
    }
}
#endif
