//
//  AboutView.swift
//  LemonRestraunt
//
//  Created by Andrew Hershey on 6/30/25.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        NavigationView{
            
            VStack {
                VStack(spacing: -50){
                    
                    Text("Welcome to Little Lemon!")
                        .font(.title)
                        .padding(.bottom, 0)
                    
                    Image("littleLemonLogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 200)
                }
            }
            
                .navigationTitle("About")
        }
    }
}

#Preview {
    AboutView()
}
