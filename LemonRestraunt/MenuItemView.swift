//
//  MenuItemView.swift
//  LemonRestraunt
//
//  Created by Andrew Hershey on 7/12/25.

import SwiftUI

struct MenuItemView: View {
    var item: MenuItem

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                Text(item.description)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text(String(format: "$%.2f", item.price))
                    .foregroundColor(.gray)
            }
            Spacer()

            if item.price > 15 {
                ValueBadgeView(type: .premium)
            } else if item.price < 7 {
                ValueBadgeView(type: .value)
            }
        }
    }
}

#Preview {
    MenuItemView(item: MenuItem(name: "Sample", description: "Sample Description", price: 12.0))
}
