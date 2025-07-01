//
//  ContentView.swift
//  LemonRestraunt
//
//  Created by Andrew Hershey on 6/30/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView{
            VStack {
                
                Image("littleLemonLogo")
                
                Image(systemName: "sparkles")
                    .imageScale(.large)
                    .foregroundStyle(.yellow)
                
                Text("Hello to the new class!")
                    .font(.largeTitle)
                    .foregroundColor(.mint)
                
                NavigationLink(destination:
                    AboutView()) {
                    Text("Go to About")
                    
                }
            }
            .padding()
            .navigationTitle("Home")
        }
    }
}

#Preview {
    ContentView()
}
