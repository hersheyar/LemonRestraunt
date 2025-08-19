//
//  ValueBadgeView.swift
//  LemonRestraunt
//
//  Created by Andrew Hershey on 7/12/25.
//

import SwiftUI

struct ValueBadgeView: View {
    enum BadgeType {
        case premium
        case value
    }

    var type: BadgeType

    var body: some View {
        switch type {
        case .premium:
            HStack {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Text("Premium")
                    .font(.caption)
                    .foregroundColor(.red)
            }
            .padding(6)
            .background(Color.orange.opacity(0.2))
            .cornerRadius(8)

        case .value:
            HStack {
                Image(systemName: "tag.fill")
                    .foregroundColor(.green)
                Text("Value")
                    .font(.caption)
                    .foregroundColor(.green)
            }
            .padding(6)
            .background(Color.green.opacity(0.2))
            .cornerRadius(8)
        }
    }
}

#Preview {
    VStack(spacing: 12) {
        ValueBadgeView(type: .premium)
        ValueBadgeView(type: .value)
    }
    .padding()
}

