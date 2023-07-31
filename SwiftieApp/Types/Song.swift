//
//  Song.swift
//  SwiftieApp
//
//  Created by Kuutti Taavitsainen on 27.7.2023.
//

import Foundation
import SwiftUI
import SwiftData

final class Song: Identifiable {
    var name: String
    var lyrics: [String]
    var duration: Float
    var cover: String
    var album: String
    var appleLink: String
    
    init(name: String,
         lyrics: [String] = [],
         duration: Float = 180,
         cover: String = "",
         album: String = "Single",
         appleLink: String = ""
    ) {
        self.name = name
        self.lyrics = lyrics
        self.duration = duration
        self.cover = cover
        self.album = album
        self.appleLink = appleLink
    }
}
