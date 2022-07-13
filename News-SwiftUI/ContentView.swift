//
//  ContentView.swift
//  News-SwiftUI
//
//  Created by Павел Черноок on 13.07.22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(posts) {
                Text($0.title)
            }
            .navigationTitle("H4K0R News")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

let posts = [Post]()
