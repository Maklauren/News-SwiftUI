//
//  PostData.swift
//  News-SwiftUI
//
//  Created by Павел Черноок on 13.07.22.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    
    let objectID: String
    let points: Int?
    let story_title: String?
    let url: String?
}
