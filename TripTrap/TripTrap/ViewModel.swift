//
//  ViewModel.swift
//  TripTrap
//
//  Created by シェイミ on 07/12/2022.
//

import Foundation
import MapKit

class ViewModel: ObservableObject {
    // Set a state variable to set the centre of the map and zoom level (span)
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 53.35, longitude: -6.266667),
                                               span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
    
    
}
