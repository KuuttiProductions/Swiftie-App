//
//  LyricsView.swift
//  SwiftieApp
//
//  Created by Kuutti Taavitsainen on 26.7.2023.
//

import SwiftUI
import SwiftData

struct CatalogView: View {
    var body: some View {
        NavigationStack {
            List {
                Section("Albums") {
                    ForEach(Albums.albums) { album in
                        NavigationLink {
                            AlbumView(album: album)
                        } label: {
                            Label(album.name, systemImage: "heart.fill")
                        }
                    }
                }
                Section("Tours") {
                    Text("The Eras Tour")
                }
            }
            .navigationTitle("Catalogue")
            .listStyle(.sidebar)
        }
    }
}

#Preview {
    CatalogView()
}
