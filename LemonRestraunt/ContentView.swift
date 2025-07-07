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
                    .foregroundColor(.black)
                    .padding(.bottom, 20)
                
                NavigationLink(destination:AboutView()) {
                    HStack{
                        Text("Learn More!")
                        Image(systemName: "arrow.right.circle")
                    }
                        .font(.system(size:20 , weight: .bold))
                        .underline()
                        .padding(.bottom)
                }
                NavigationLink(destination: ReservationForm()) {
                    Label("Make a Reservation", systemImage: "calendar")
                        .font(.system(size: 18, weight: .bold))
                }
            }
            .padding()
            .navigationTitle("Welcome")
        }
    }
}

#Preview {
    ContentView()
}
