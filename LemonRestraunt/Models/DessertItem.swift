//
//  DessertItem.swift
//  LemonRestraunt
//
//  Created by Andrew Hershey on 8/18/25.
//

import Foundation

struct DessertItem: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let price: Double
}
