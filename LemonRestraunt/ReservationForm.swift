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
    @State private var reservationDate: Date = Date()
    @State private var allergies: String = ""
    @State private var showSummary: Bool = false

    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Reservation Details")) {
                    TextField("Your name", text: $guestName)
                    if !Validation.isValidName(guestName){
                            Text("Please enter your name")
                                .foregroundColor(.red)
                                .font(.caption)
                    }

                    Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...10)

                    let guestMessage = Validation.guestCoutMessage(guestCount)
                    if !guestMessage.isEmpty {
                        Text(guestMessage)
                            .foregroundColor(.red)
                            .font(.caption)
                    }

                    DatePicker("Date", selection: $reservationDate, in: Date()..., displayedComponents: [.date, .hourAndMinute])
                    
                    let warning = Validation.dateValidationMessage(for: reservationDate)
                    if !warning.isEmpty {
                        Text(warning)
                            .foregroundColor(.red)
                            .font(.caption)
                    }

                    TextField("Do you have any allergies?", text: $allergies)
                        .textFieldStyle(.roundedBorder)
                }

                Section {
                    Button("Confirm Reservation") {
                        showSummary = true
                    }
                    .disabled(guestName.isEmpty)
                    .font(.headline)
                    .buttonStyle(.borderedProminent)
                    .navigationDestination(isPresented: $showSummary){
                        ReservationSummaryView(
                            guestName: guestName,
                            reservationDate: reservationDate,
                            guestCount: guestCount,
                            allergies: allergies
                        )
                    }
                }
            }
            .navigationTitle("Reservation")
        }
    }
}

#Preview {
    ReservationForm()
}
