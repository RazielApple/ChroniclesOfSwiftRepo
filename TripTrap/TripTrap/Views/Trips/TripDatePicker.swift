//
//  TripDatePicker.swift
//  TripTrap
//
//  Created by Htet Myat Moe Myint Kyeal on 14/12/22.
//

import SwiftUI

struct TripDatePicker: View {
    
    @Binding var selectedTripDate: Date
    
    var body: some View {
//        Rectangle()
//            .fill(Color.gray)
//            .frame(height: 1)
    
        DatePicker("Trip Planned Date",
               selection: $selectedTripDate,
               displayedComponents: [.date])
//            .padding(.leading, 16)
//            .padding(.trailing, 16)
    }
}
