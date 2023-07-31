//
//  AlbumView.swift
//  SwiftieApp
//
//  Created by Kuutti Taavitsainen on 28.7.2023.
//

import SwiftUI

struct AlbumView: View {
    var album: Album
    
    var body: some View {
        VStack {
            ZStack {
                Image(album.cover)
                    .resizable()
                VStack {
                    Text(album.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .shadow(radius: 10)
                    HStack {
                        Text(album.genre)
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                        Text("2019")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                    }
                }
            }
            List {
                ForEach(album.songs!) { song in
                    NavigationLink {
                        SongView(song: song)
                    } label: {
                        SongCard(song: song)
                    }
                }
            }
        }
    }
}

#Preview {
    AlbumView(album: Albums.albums.first!)
}
