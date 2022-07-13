//
//  ContentView.swift
//  News-SwiftUI
//
//  Created by Павел Черноок on 13.07.22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink {
                    DetailView(url: post.story_url)
                } label: {
                    Text(post.story_title ?? "")
                }
            }
            .navigationTitle("H4K0R News")
        }
        .onAppear {
            networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
