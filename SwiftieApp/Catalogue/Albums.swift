//
//  Albums.swift
//  SwiftieApp
//
//  Created by Kuutti Taavitsainen on 28.7.2023.
//

import Foundation

struct Albums {
    static var albums: [Album] = [
        Album(name: "Lover", genre: "Pop", cover: "LoverCover", appleLink: "https://apple.com", songs: [
            Song(name: "Cruel Summer", lyrics: [
                "Fever dream quiet in the night",
                "You know that i caught it",
                "Bad bad boy shiny toy with a price",
                "you know that i bought it",
                "Killing me slow",
                "Out the window",
                "I'm always waiting for you to be below"
            ], duration: 235.3, cover: "LoverCover", appleLink: "https://apple.com")])
    ]
}
