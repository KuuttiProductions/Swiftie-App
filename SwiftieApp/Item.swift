//
//  Item.swift
//  SwiftieApp
//
//  Created by Kuutti Taavitsainen on 26.7.2023.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
