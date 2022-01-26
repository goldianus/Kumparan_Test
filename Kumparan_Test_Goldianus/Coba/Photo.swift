//
//  Photo.swift
//  Kumparan_Test_Goldianus
//
//  Created by Goldianus Solangius on 25/01/22.
//


import SwiftUI

struct Photoss: Identifiable {
    
    var id =  UUID()
    var name: String
    
    var imageName: String{return name}
    var tumbhnailName: String{return name}
}


#if DEBUG
let dataCoba = [
    Photoss(name: "Photo1"),
    Photoss(name: "Photo1"),
    Photoss(name: "Photo1"),
    Photoss(name: "Photo1"),
    Photoss(name: "Photo1")
]
#endif
