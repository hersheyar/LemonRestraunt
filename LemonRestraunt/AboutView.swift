//
//  AboutView.swift
//  LemonRestraunt
//
//  Created by Andrew Hershey on 6/30/25.
//

//
//  AboutView\.swift
//  LemonRestraunt
//
//  Created by Andrew Hershey on 6/30/25.
//

import SwiftUI

struct AboutView: View {
@State private var orders = 99
@State private var userName = ""
@State private var reservationSize = 0

var reservationIcons: String {
    String(repeating: "🍽️", count: reservationSize)
}

var body: some View {
    NavigationView {
        VStack {
            VStack {
                Text("Welcome, \(userName) to Little Lemon!")
                    .font(.title)
                    .padding()

                Image("littleLemonLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250, height: 80)

                Text("You've placed \(orders) order\(orders == 1 ? "" : "s")!")
                    .padding(.bottom)

                Button("Place Another Order") {
                    orders += 1
                }
                .buttonStyle(.borderedProminent)
                
                TextField("Enter your name", text: $userName)
                    .textFieldStyle(.roundedBorder)
                    .padding(8)
                    .background(.ultraThinMaterial)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray.opacity(0.4)))
                    .padding(.horizontal)
                    .padding(.bottom, 30)

                Button("Reset Orders") {
                    orders = 0
                }
                .buttonStyle(.borderedProminent)
                .padding(.bottom)

                TextField("Enter your name", text: $userName)
                    .textFieldStyle(.roundedBorder)
                    .padding(8)
                    .background(.ultraThinMaterial)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray.opacity(0.4)))
                    .padding(.horizontal)

                Text("Hi \(userName), your party has \(reservationSize) guest\(reservationSize == 1 ? "" : "s") today!")
                    .font(.caption)
                    .padding()

                Button("Add Guest") {
                    reservationSize += 1
                }
                .buttonStyle(.borderedProminent)
                .padding(.bottom)

                Button("Remove Guest") {
                    if reservationSize > 0 {
                        reservationSize -= 1
                    }
                }
                .buttonStyle(.borderedProminent)
                .padding(.bottom)

                Text(reservationIcons)
                    .font(.title2)
            }
        }
        .navigationTitle("About")
    }
}

}

#Preview {
AboutView()
}
