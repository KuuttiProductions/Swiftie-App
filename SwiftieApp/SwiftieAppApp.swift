//
//  SwiftieAppApp.swift
//  SwiftieApp
//
//  Created by Kuutti Taavitsainen on 26.7.2023.
//

import SwiftUI
import SwiftData

@main
struct SwiftieAppApp: App {

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Item.self)
    }
}
