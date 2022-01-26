//
//  DetailPostPage.swift
//  Kumparan_Test_Goldianus
//
//  Created by Goldianus Solangius on 22/01/22.
//

import SwiftUI

struct DetailPostPage: View {
    @State var commands = [PostCommendModel]()
    var detailViewModel : DetailViewModel

    
    var body: some View {
            ZStack{
                VStack(alignment: .leading) {
                    NavigationLink(destination: EmptyView()){
                        HStack {
                            
                            Image(systemName: "person")
                            Text ("\(detailViewModel.userID)")
                                .font(.subheadline)
                        }
                        
                    }
                   
                    Text(detailViewModel.title)
                        .font(.headline)
                    Spacer()
                    Text(detailViewModel.body)
                        .font(.caption)
                   
                    List(commands) { com in
                        VStack {
                            Text(com.body)
                            Text(com.name)
                        }
                    }
                    .listStyle(PlainListStyle())
                    .padding()
                    .onAppear() {

                        ApiService().getPhostCommend(id: detailViewModel.id){(commands) in
                            self.commands = commands
                        }
                    }
                    Spacer()
                    
                }
                .padding()
                .navigationBarTitle(Text("\(detailViewModel.userID)"), displayMode: .inline)
            }
    }
}





