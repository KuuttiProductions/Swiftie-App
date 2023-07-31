//
//  SongView.swift
//  SwiftieApp
//
//  Created by Kuutti Taavitsainen on 28.7.2023.
//

import SwiftUI

struct SongView: View {
    var song: Song
    @State private var showLyrics: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    Image(song.cover)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                    VStack {
                        Spacer()
                        Text(song.name)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .shadow(radius: 10)
                            .foregroundStyle(.white)
                            .padding()
                    }
                }
                Link("Play", destination: URL(string: song.appleLink)!)
                    .buttonStyle(.bordered)
                    .frame(maxWidth: .infinity)
                Button("Lyrics") {
                    showLyrics.toggle()
                }
            }
            .ignoresSafeArea()
            .scaledToFit()
            .sheet(isPresented: $showLyrics) {
                List(0..<song.lyrics.count, id: \.self) { index in
                    Text(song.lyrics[index])
                }
                .navigationTitle("Lyrics")
            }
        }
    }
}

#Preview {
    SongView(song: Albums.albums.first!.songs!.first!)
}
