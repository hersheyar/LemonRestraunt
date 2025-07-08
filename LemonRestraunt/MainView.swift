//
//  MainView.swift
//  LemonRestraunt
//
//  Created by Andrew Hershey on 7/6/25.
//

import SwiftUI

struct MainView: View {
    @State private var isLoggedIn = false
    @State private var userName = ""

    var body: some View {
        NavigationView {
            VStack {
                if isLoggedIn == true {
                    VStack {
                        Text("Welcome, \(userName)")
                            .font(.title)
                            .padding(.bottom)

                        NavigationLink(destination: AboutView()) {
                            HStack {
                                Text("Learn More!")
                                Image(systemName: "arrow.right.circle")
                            }
                            .font(.system(size: 20, weight: .bold))
                            .underline()
                            .padding(.bottom)
                        }

                        NavigationLink(destination: ReservationForm()) {
                            Label("Make a Reservation", systemImage: "calendar")
                                .font(.system(size: 18, weight: .bold))
                        }
                        Button("Logout"){
                            isLoggedIn = false
                            userName = ""
                        }
                        .font(.headline)
                        .buttonStyle(.borderedProminent)
                    }
                } else {
                    LoginView(isLoggedIn: $isLoggedIn, userName: $userName)
                }
            }
            .padding()
            .navigationTitle("Login")
        }
    }
}

#Preview {
    MainView()
}
