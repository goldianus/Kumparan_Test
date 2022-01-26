//
//  UserDetailPage.swift
//  Kumparan_Test_Goldianus
//
//  Created by Goldianus Solangius on 26/01/22.
//

import SwiftUI

struct UserDetailPage: View {
    
    let userItem : UserModal
    let tampungID : String
    
    var body: some View {
        
        VStack() {
            Text(userItem.name)
                .font(.title2)
                .multilineTextAlignment(.leading)
            Text(userItem.email)
                .font(.callout)
                .multilineTextAlignment(.leading)
                .foregroundColor(.secondary)
            Text(userItem.address.city)
                .font(.caption)
                .multilineTextAlignment(.leading)
                .foregroundColor(.secondary)
            
        }
        .onAppear()
    }
}


