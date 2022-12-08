//
//  AttactionModel.swift
//  TripTrap
//
//  Created by シェイミ on 08/12/2022.
//

import Foundation
import MapKit

struct AttractionModel: Identifiable {
    var id: UUID
    var name: String
    var coordinates: CLLocation
    
}
