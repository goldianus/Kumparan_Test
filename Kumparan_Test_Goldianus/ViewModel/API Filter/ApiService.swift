//
//  ApiService.swift
//  Kumparan_Test_Goldianus
//
//  Created by Goldianus Solangius on 26/01/22.
//

import Foundation
import CoreImage
import SwiftUI

class ApiService{
    
    func getPhostCommend(id: Int, completion:@escaping ([PostCommendModel]) -> ()) {
        let urlPostComen = URLComponents(string: "https://jsonplaceholder.typicode.com/posts/\(id)/comments")!

        let request = URLRequest(url: urlPostComen.url!)

       let task =  URLSession.shared.dataTask(with: request) { data, respons, error in
           if error != nil {
               print("Failed: Some think wrong!")
           } else if let data = data, let response = respons as? HTTPURLResponse, response.statusCode == 200 {
               let decoder = JSONDecoder()

               do {
                   let listPostCommend = try decoder.decode([PostCommendModel].self, from: data)
                   completion(listPostCommend)
                   print("test\(listPostCommend)")
               } catch {
                   print("Invalid Response \(error)")
               }
           }
        }
        task.resume()
    }

    
    
    func getUserAlbum(id: Int, completion:@escaping ([UserAlbumModel]) -> ()) {
        let urlUserAlbum = URLComponents(string: "https://jsonplaceholder.typicode.com/users/\(id)/albums")!

        let request = URLRequest(url: urlUserAlbum.url!)

       let task =  URLSession.shared.dataTask(with: request) { data, respons, error in
           if error != nil {
               print("Failed: Some think wrong!")
           } else if let data = data, let response = respons as? HTTPURLResponse, response.statusCode == 200 {
               let decoder = JSONDecoder()

               do {
                   let listUserAlbum = try decoder.decode([UserAlbumModel].self, from: data)
                   completion(listUserAlbum)
                   print("test\(listUserAlbum)")
               } catch {
                   print("Invalid Response \(error)")
               }
           }
        }
        task.resume()
    }

    
    func getAlbumPhoto(albumId: Int, completion:@escaping ([AlbumPhotoModel]) -> ()) {
        let urlAlbumPhoto = URLComponents(string: "https://jsonplaceholder.typicode.com/users/\(albumId)/albums")!

        let request = URLRequest(url: urlAlbumPhoto.url!)

       let task =  URLSession.shared.dataTask(with: request) { data, respons, error in
           if error != nil {
               print("Failed: Some think wrong!")
           } else if let data = data, let response = respons as? HTTPURLResponse, response.statusCode == 200 {
               let decoder = JSONDecoder()

               do {
                   let listAlbumPhoto = try decoder.decode([AlbumPhotoModel].self, from: data)
                   completion(listAlbumPhoto)
                   print("test\(listAlbumPhoto)")
               } catch {
                   print("Invalid Response \(error)")
               }
           }
        }
        task.resume()
    }

    
    func getDataPost(completion:@escaping ([PostModal]) -> ()) {
        let urlListPost = URLComponents(string: "https://jsonplaceholder.typicode.com/posts")!
        
        let request = URLRequest(url: urlListPost.url!)

       let task =  URLSession.shared.dataTask(with: request) { data, respons, error in
           if error != nil {
               print("Failed: Some think wrong!")
           } else if let data = data, let response = respons as? HTTPURLResponse, response.statusCode == 200 {
               let decoder = JSONDecoder()
               
               do {
                   let listPost = try decoder.decode([PostModal].self, from: data)
                   completion(listPost)
                   print("test\(listPost)")
               } catch {
                   print("Invalid Response \(error)")
               }
           }
        }
        task.resume()
    }
    
    func getDataUser(completion:@escaping ([UserModal]) -> ()) {
        let urlListUser = URLComponents(string: "https://jsonplaceholder.typicode.com/users")!
        
        let request = URLRequest(url: urlListUser.url!)

       let task =  URLSession.shared.dataTask(with: request) { data, respons, error in
           if error != nil {
               print("Failed: Some think wrong!")
           } else if let data = data, let response = respons as? HTTPURLResponse, response.statusCode == 200 {
               let decoder = JSONDecoder()
               
               do {
                   let listUser = try decoder.decode([UserModal].self, from: data)
                   completion(listUser)
                   print("test\(listUser)")
               } catch {
                   print("Invalid Response \(error)")
               }
           }
        }
        task.resume()
    }
    
    
    func getDataCommand(id: Int, completion:@escaping ([CommandModal]) -> ()) {
        let urlDetailComand = URLComponents(string: "https://jsonplaceholder.typicode.com/posts/\(id)/commands")!
        
        
        let request = URLRequest(url: urlDetailComand.url!)

       let task =  URLSession.shared.dataTask(with: request) { data, respons, error in
           if error != nil {
               print("Failed: Some think wrong!")
           } else if let data = data, let response = respons as? HTTPURLResponse, response.statusCode == 200 {
               let decoder = JSONDecoder()
               
               do {
                   let command = try decoder.decode([CommandModal].self, from: data)
                   completion(command)
                   print("test\(command)")
               } catch {
                   print("Invalid Response \(error)")
               }
           }
        }
        task.resume()
    }
    
    
    func getDataAlbum(completion:@escaping ([AlbumsModal]) -> ()) {
        let urlAlbum = URLComponents(string: "https://jsonplaceholder.typicode.com/users")!
        
        let request = URLRequest(url: urlAlbum.url!)

       let task =  URLSession.shared.dataTask(with: request) { data, respons, error in
           if error != nil {
               print("Failed: Some think wrong!")
           } else if let data = data, let response = respons as? HTTPURLResponse, response.statusCode == 200 {
               let decoder = JSONDecoder()
               
               do {
                   let album = try decoder.decode([AlbumsModal].self, from: data)
                   completion(album)
                   print("test\(album)")
               } catch {
                   print("Invalid Response \(error)")
               }
           }
        }
        task.resume()
    }
    
    
    func getDataPhotos(completion:@escaping ([PhotosModal]) -> ()) {
        let urlListPhoto = URLComponents(string: "https://jsonplaceholder.typicode.com/photos")!
        
        let request = URLRequest(url: urlListPhoto.url!)

       let task =  URLSession.shared.dataTask(with: request) { data, respons, error in
           if error != nil {
               print("Failed: Some think wrong!")
           } else if let data = data, let response = respons as? HTTPURLResponse, response.statusCode == 200 {
               let decoder = JSONDecoder()
               
               do {
                   let listPhoto = try decoder.decode([PhotosModal].self, from: data)
                   completion(listPhoto)
                   print("test\(listPhoto)")
               } catch {
                   print("Invalid Response \(error)")
               }
           }
        }
        task.resume()
    }
    
}
