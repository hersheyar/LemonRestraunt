//
//  MenuView.swift
//  LemonRestraunt
//
//  Created by Andrew Hershey on 7/9/25.
//

import SwiftUI

struct MenuView: View {
    @State private var showMessage = false
    @State private var showThankYou = false

    let menuItems: [String: Double] = [
        "Carbonara": 12.5,
        "Chicken Picatta": 9.99,
        "Cesar Salad": 7.5,
        "Eggplant Parmesan": 11.99,
        "Lobster Thermidor": 24.99,
        "Parmesan Crusted Salmon": 19.99,
        "Vegetarian Lasagna": 14.99,
        "Chocolate Cake": 5.75
    ]

    var body: some View {
        VStack {
            HStack {
                Image(systemName: "fork.knife")
                    .foregroundColor(.orange)
                    .font(.system(size: 32))
                Text("Today's Menu")
                    .font(.title)
            }
            .padding()

            VStack(spacing: 20) {
                Toggle("Show a special text", isOn: $showMessage)
                    .padding(.horizontal)

                Toggle("Show Thank You Message", isOn: $showThankYou)
                    .padding(.horizontal)

                if showMessage {
                    Text("You unlocked a suprise!")
                        .font(.title3)
                        .foregroundColor(.green)
                }

                if showThankYou {
                    Text("Thanks for visiting Little Lemon!")
                        .italic()
                        .foregroundColor(.blue)
                }

                // Count Box
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.gray.opacity(0.1))
                        .frame(height: 50)
                    Text("Menu Items: \(menuItems.count)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.horizontal)
            }
            .padding(.bottom)

            List {
                ForEach(menuItems.sorted(by: { $0.key < $1.key }), id: \.key) { name, price in
                    HStack {
                        VStack(alignment: .leading) {
                            Text(name)
                                .font(.headline)
                            Text(String(format: "$%.2f", price))
                                .foregroundColor(.gray)
                        }
                        Spacer()

                        if price > 15 {
                            HStack {
                                Image(systemName: "star.fill")
                                    .foregroundColor(.yellow)
                                Text("Premium")
                                    .font(.caption)
                                    .foregroundColor(.red)
                            }
                            .font(.caption)
                            .foregroundColor(.orange)
                            .padding(6)
                            .background(Color.orange.opacity(0.2))
                            .cornerRadius(8)
                        } else if price < 7 {
                            HStack {
                                Image(systemName: "tag.fill")
                                    .foregroundColor(.green)
                                Text("Value")
                                    .font(.caption)
                                    .foregroundColor(.green)
                            }
                            .font(.caption)
                            .padding(6)
                            .background(Color.green.opacity(0.2))
                            .cornerRadius(8)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    MenuView()
}

