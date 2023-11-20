//
//  Item.swift
//  Educapp
//
//  Created by Foundation13 on 20/11/23.
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
