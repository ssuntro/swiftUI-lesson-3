//
//  ContentView.swift
//  HackerNews
//
//  Created by Siroratt Suntronsuk on 18/7/2564 BE.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) { post in
                Text(post.title)
            }.navigationTitle("Hacker News")
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Post: Identifiable {
    let id: String
    let title: String
}

let posts = [
    Post(id: "1", title: "One"),
    Post(id: "2", title: "Two"),
    Post(id: "3", title: "three"),
]
