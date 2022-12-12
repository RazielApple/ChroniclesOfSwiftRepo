//
//  TripModel.swift
//  TripTrap
//
//  Created by シェイミ on 12/12/2022.
//

import Foundation

struct Trip: Codable, Identifiable {
    var id = UUID()
    var featurs: Feature
    
    var date: Date
    
}
