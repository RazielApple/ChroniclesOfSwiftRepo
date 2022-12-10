//
//  AttactionModel.swift
//  TripTrap
//
//  Created by シェイミ on 08/12/2022.
//

import Foundation
import MapKit

// This is just a test. Not sure what properties will be required.
struct AttractionModel: Identifiable {
    var id: UUID
    var name: String
    var coordinates: CLLocation
    var imageURL: URL
    
}
