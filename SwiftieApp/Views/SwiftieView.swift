//
//  SwiftieView.swift
//  SwiftieApp
//
//  Created by Kuutti Taavitsainen on 26.7.2023.
//

import Foundation
import SwiftUI

struct SwiftieView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("It's me, hi! 😁")
            }
            .navigationTitle("Swiftie")
        }
    }
}

#Preview {
    SwiftieView()
}
