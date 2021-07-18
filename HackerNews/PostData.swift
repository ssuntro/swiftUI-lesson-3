//
//  PostData.swift
//  HackerNews
//
//  Created by Siroratt Suntronsuk on 18/7/2564 BE.
//

struct Result: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String { //how to order each tiem
        return objectID
    }
    let objectID: String
    let points: Int
    let title: String
    let url: String
}
