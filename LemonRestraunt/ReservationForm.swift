//
//  ReservationForm.swift
//  LemonRestraunt
//
//  Created by Andrew Hershey on 7/2/25.
//


import SwiftUI

struct ReservationForm: View {
    @State private var guestName: String = ""
    @State private var guestCount: Int = 1

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Reservation Details")) {
                    TextField("Your name", text: $guestName)
                    Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...10)
                }
            }
            .navigationTitle("Reservation")
        }
    }
}

#Preview {
    ReservationForm()
}
