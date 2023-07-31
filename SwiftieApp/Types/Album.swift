//
//  Album.swift
//  SwiftieApp
//
//  Created by Kuutti Taavitsainen on 28.7.2023.
//

import Foundation

final class Album: Identifiable {
    var name: String
    var songs: [Song]?
    var description: String
    var genre: String
    var cover: String
    var appleLink: String
    
    init(name: String, description: String = "", genre: String = "", cover: String = "", appleLink: String = "", songs: [Song]? = []) {
        self.name = name
        self.songs = songs
        self.description = description
        self.genre = genre
        self.cover = cover
        self.appleLink = appleLink
    }
}
