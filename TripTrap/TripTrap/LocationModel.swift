//
//  Model.swift
//  MapView
//
//  Created by シェイミ on 07/12/2022.
//

import Foundation
import MapKit

struct Location: Identifiable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
}

extension Location {
    static var exampleLocations = [
            Location(name: "Guinness Storehouse", coordinate: CLLocationCoordinate2D(latitude: 53.341648, longitude: -6.286763)),
            Location(name: "Jameson Distillery", coordinate: CLLocationCoordinate2D(latitude: 53.348454, longitude: -6.277327))
        ]
}
