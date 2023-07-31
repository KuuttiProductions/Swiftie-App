//
//  ContentView.swift
//  SwiftieApp
//
//  Created by Kuutti Taavitsainen on 26.7.2023.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    var body: some View {
        TabView {
            SwiftieView()
                .tabItem {
                    Label("Swiftie", systemImage: "person.circle")
                }
            CatalogView()
                .tabItem {
                    Label("Catalog", systemImage: "list.star")
                }
            AppearanceView()
                .tabItem {
                    Label("Appearance", systemImage: "paintpalette")
                }
        }
    }
}

#Preview {
    ContentView()
}
