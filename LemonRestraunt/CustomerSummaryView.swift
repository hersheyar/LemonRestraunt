//
//  CustomerSummaryView.swift
//  LemonRestraunt
//
//  Created by Andrew Hershey on 8/21/25.
//

import SwiftUI


struct CustomerSummaryView: View {
    @State private var customer = Customer(
        name: "Alice",
        email: "alice@example.com",
        isLoyaltyMember: true,
        favoriteDishes: ["Pizza", "Pasta"]
    )

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("Customer Summary")
                .font(.title)
                .bold()

            Text("Name: \(customer.name)")
            Text("Email: \(customer.email)")
            
            if customer.isLoyaltyMember {
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Text("Loyalty Member")
                        .font(.headline)
                        .foregroundColor(.green)
                }
            }
             
            Text("Favorite: \(customer.favoriteDishes.joined(separator: ", "))")
            
            Divider()
            
            Text(customer.customerSummary())
                           .font(.soz)
                           .foregroundColor(.black)

            Toggle("Loyalty Member", isOn: $customer.isLoyaltyMember)

        }
        .padding()
    }
}

#Preview {
    CustomerSummaryView()
}
