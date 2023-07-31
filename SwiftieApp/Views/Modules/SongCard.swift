//
//  SongLink.swift
//  SwiftieApp
//
//  Created by Kuutti Taavitsainen on 28.7.2023.
//

import SwiftUI

struct SongCard: View {
    var song: Song
    
    var body: some View {
        HStack {
            Image(song.cover)
                .resizable()
                .shadow(radius: 10)
                .aspectRatio(1, contentMode: .fit)
                .clipShape(.rect(cornerRadius: 10))
            Text(song.name)
        }
    }
}

#Preview {
    SongCard(song: Albums.albums.first!.songs!.first!)
}
