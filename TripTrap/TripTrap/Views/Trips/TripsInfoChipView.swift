//
//  TripsInfoChipView.swift
//  TripTrap
//
//  Created by Htet Myat Moe Myint Kyeal on 13/12/22.
//

import SwiftUI

struct TripsInfoChipView: View {
    private let text: String
    private let systemImage: String?
    
    init(_ text: String, systemImage: String? = nil) {
        self.text = text
        self.systemImage = systemImage
    }
    
    var body: some View {
        Group {
            if let systemImage {
                Label(text, systemImage: systemImage)
                    .labelStyle(.titleAndIcon)
            } else {
                Label(text, systemImage: "")
                    .labelStyle(.titleOnly)
            }
        }
        .padding()
        .background { Capsule().stroke() }
    }
}

struct TripsInfoChipView_Previews: PreviewProvider {
    static var previews: some View {
        
        TripsInfoChipView("500", systemImage: "eurosign")
            .previewLayout(.sizeThatFits)
    }
}

