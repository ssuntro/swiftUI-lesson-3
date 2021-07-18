//
//  NetworkManager.swift
//  HackerNews
//
//  Created by Siroratt Suntronsuk on 18/7/2564 BE.
//

import Foundation

class NetworkManager: ObservableObject { // Make NetworkManager observable(observer design pattern)
    
    @Published var posts = [Post]() //published prop for any interested parties and notify all changes to the listener
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil,
                   let data = data,
                   let result = try? JSONDecoder().decode(Result.self, from: data) {
                    DispatchQueue.main.async {
                        self.posts = result.hits //Must be upedate on the main thread due to published prop
                    }
                    
                }
            }
            task.resume()
        }
    }
}
