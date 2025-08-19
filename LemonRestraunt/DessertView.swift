//
//  DessertView.swift
//  LemonRestraunt
//
//  Created by Andrew Hershey on 8/18/25.
//

import SwiftUI

struct DessertView: View {
    let desserts: [DessertItem] = [
        DessertItem(name: "Tiramisu", description: "Coffee-flavored Italian dessert", price: 6.50),
        DessertItem(name: "Cheesecake", description: "Creamy vanilla cheesecake", price: 8.99),
        DessertItem(name: "Gelato", description: "Italian-style ice cream", price: 4.75)
    ]

    var body: some View {
        NavigationStack {
            List(desserts) { dessert in
                VStack(alignment: .leading, spacing: 4) {
                    Text(dessert.name)
                        .font(.headline)
                    Text(dessert.description)
                        .font(.subheadline)
                        .foregroundColor(.gray)

                    HStack {
                        Text(String(format: "$%.2f", dessert.price))
                            .foregroundColor(.secondary)

                        if dessert.price > 15 {
                            ValueBadgeView(type: .premium)
                        } else if dessert.price < 7 {
                            ValueBadgeView(type: .value)
                        }
                    }
                }
                .padding(.vertical, 5)
            }
            .navigationTitle("Desserts")
        }
    }
}

#Preview {
    DessertView()
}
