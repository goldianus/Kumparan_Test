//
//  PostView.swift
//  Kumparan_Test_Goldianus
//
//  Created by Goldianus Solangius on 24/01/22.
//

import SwiftUI

struct PostView: View {
   
    var body: some View {
        NavigationView {
            PostCell()
            .navigationTitle("Post")
        }
    }
}

struct PostCell: View {
    @State var posts = [PostModal]()
    @State var users = [UserModal]()
    @State private var userName: String = ""
    var body: some View {
        List (posts) {post in
            
            NavigationLink(destination: DetailPostPage(detailViewModel: DetailViewModel(userID: post.userId, title: post.title, body: post.body, id: post.id)))
            {
                VStack(alignment: .leading, spacing: 5){
                    Text(post.title)
                        .font(.headline)
                    
                    Text(post.body)
                        .font(.caption)
                        .lineLimit(4).multilineTextAlignment(.leading)
                    Spacer()
                    
                    ForEach(users, id: \.self){user in
                        if user.id == post.userId {
                            Text (user.name)
                                .font(.caption2)
                            
                                .onAppear {
                                    self.userName = user.name

                                }
                                Text(user.company.name)
                                .font(.footnote)
                                    .foregroundColor(.gray)
                        }
                    }
                }
            }
        }
        .listStyle(PlainListStyle())
        .onAppear(){
            
            ApiService().getDataPost{
                (posts) in
                self.posts = posts
            }
            
            ApiService().getDataUser{
                (users) in
                self.users = users
            }
        }
    }
}


struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView()
    }
}

