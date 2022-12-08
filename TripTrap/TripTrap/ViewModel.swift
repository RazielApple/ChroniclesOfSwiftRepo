//
//  ViewModel.swift
//  TripTrap
//
//  Created by シェイミ on 07/12/2022.
//

import Foundation
import MapKit

class ViewModel: ObservableObject {
//    TODO: The location manager should be initialised here, but I cannot get it to work if it is. 
    @Published var locationManager = LocationManager()
}

