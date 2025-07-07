//
//  LoginView.swift
//  LemonRestraunt
//
//  Created by Andrew Hershey on 7/6/25.
//

import SwiftUI

struct LoginView: View {
    @Binding var isLoggedIn: Bool
    @Binding var userName: String
    
    var body: some View {
        VStack(spacing: 20) {
            Image("littleLemonLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 80)

            TextField("Enter your name", text: $userName)
                .textFieldStyle(.roundedBorder)
                .padding(.horizontal)

            Button("Log In") {
                isLoggedIn = true
            }
            .font(.headline)
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .navigationTitle("Login")
    }
}

//#Preview {
  //  LoginView(userName: $userName, isLoggedIn: $isLoggedIn)
//}
