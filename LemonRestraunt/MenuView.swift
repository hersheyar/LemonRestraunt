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
    @State private var showDesserts = false

    let menuItems: [MenuItem] = [
        MenuItem(name: "Carbonara", description: "Creamy pasta with pancetta", price: 12.5),
        MenuItem(name: "Chicken Picatta", description: "Lemon butter chicken", price: 9.99),
        MenuItem(name: "Cesar Salad", description: "Fresh romaine with dressing", price: 5.5),
        MenuItem(name: "Eggplant Parmesan", description: "Baked eggplant with marinara", price: 11.99),
        MenuItem(name: "Lobster Thermidor", description: "Lobster in cream sauce", price: 24.99),
        MenuItem(name: "Parmesan Crusted Salmon", description: "Salmon with parmesan crust", price: 19.99),
        MenuItem(name: "Vegetarian Lasagna", description: "Layers of veggies & cheese", price: 14.99),
        MenuItem(name: "Lasagna", description: "Cheesy baked pasta with meat sauce", price: 13.99),
        MenuItem(name: "Tacos", description: "3 soft tacos with your choice of meat", price: 10.50),
        MenuItem(name: "Ramen", description: "Spicy pork ramen with egg and greens", price: 14.25)
    ]

    var sortedMenuItems: [MenuItem] {
        menuItems.sorted { $0.name < $1.name }
    }

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

                Button("View Desserts") {
                    showDesserts.toggle()
                }
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(Color.green)
                .cornerRadius(8)

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
                ForEach(sortedMenuItems) { item in
                    MenuItemView(item: item)
                }
            }
        }
        .sheet(isPresented: $showDesserts) {
            DessertView()
        }
    }
}

#Preview {
    MenuView()
}
