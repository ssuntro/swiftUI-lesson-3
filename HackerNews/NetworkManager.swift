//
//  NetworkManager.swift
//  HackerNews
//
//  Created by Siroratt Suntronsuk on 18/7/2564 BE.
//

import Foundation

class NetworkManager {
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { data, response, error in
                if error == nil,
                   let data = data,
                   let result = try? JSONDecoder().decode(Result.self, from: data) {
                    ///observer design pattern
                }
            }
            task.resume()
        }
    }
}
