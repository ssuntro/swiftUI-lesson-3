//
//  ContentView.swift
//  HackerNews
//
//  Created by Siroratt Suntronsuk on 18/7/2564 BE.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager() //in order to listen published data, subscribe to the networkmanager when ever networkManager is updated this line going to trigger and ui will update accordingly
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                //when ever networkManager.posts is updated swiftUI will trigger to rebuild this list
                Text(String(post.points))
                Text(post.title)
            }.navigationTitle("Hacker News")
        }.onAppear(perform: { //view load -> appear
            self.networkManager.fetchData()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//struct Post: Identifiable {
//    let id: String
//    let title: String
//}
//
//let posts = [
//    Post(id: "1", title: "One"),
//    Post(id: "2", title: "Two"),
//    Post(id: "3", title: "three"),
//]
