//
//  ReservationSummaryView.swift
//  LemonRestraunt
//
//  Created by Andrew Hershey on 7/7/25.
//

import SwiftUI

struct ReservationSummaryView: View {
    let guestName: String
    let reservationDate: Date
    let guestCount: Int
    let allergies: String

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Reservation Summary")
                .font(.title)

            Text("Thank you, \(guestName), your reservation is confirmed! Below are the details.")
                .font(.headline)
                .foregroundColor(.green)

            Text("Date: \(formattedDate(date: reservationDate))")
            Text("Guests: \(guestCount)")

            if !allergies.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                Text("Note: We will accommodate the following allergies: \(allergies)")
                    .foregroundColor(.orange)
            }
        }
        .padding()
    }

    func formattedDate(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }
}

//#Preview {
//    ReservationSummaryView()
//}
