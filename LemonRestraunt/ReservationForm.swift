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
                    
                    if guestName.isEmpty {
                        Text("Please enter your name")
                            .foregroundColor(.red)
                            .font(.caption)
                    }

                    Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...10)
                    
                    if guestCount > 5 {
                        Text("For large parties, we will contact you")
                            .foregroundColor(.orange)
                            .font(.caption)
                    }
                }

                Section {
                    Button("Confirm Reservation") {
                        // Handle confirmation here
                    }
                    .disabled(guestName.isEmpty)
                }
            }
            .navigationTitle("Reservation")
        }
    }
}

#Preview {
    ReservationForm()
}
