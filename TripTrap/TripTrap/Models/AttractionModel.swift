//
//  AttactionModel.swift
//  TripTrap
//
//  Created by シェイミ on 08/12/2022.
//

import Foundation
import MapKit

struct AttractionModel: Identifiable, Codable,Hashable {
    var id: UUID
    var name: String
    //var "location" splitted in latitude and longitude because
    //if you put directly a CLLocation variable
    //it throws an error with Codable protocol. Uncomment the following line if you are curious:
    
    //var location_tmp: CLLocation
    private var latitude: Double = 0.0
    private var longitude: Double = 0.0
    
    var location: CLLocation {
        return CLLocation(latitude: latitude, longitude: longitude)
    }
    
    var type: String
    
}

    
