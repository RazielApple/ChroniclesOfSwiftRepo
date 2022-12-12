//
//  SmallMapView.swift
//  TripTrap
//
//  Created by シェイミ on 08/12/2022.
//

import SwiftUI
import MapKit 

struct MapView: View {
    @StateObject private var locationManager = LocationManager()
//    Check the ViewModel for the TODO.
//    @EnvironmentObject var viewModel: ViewModel
    
    var locations = Location.exampleLocations
    
    var region: Binding<MKCoordinateRegion>? {
        guard let location = locationManager.location else {
            return MKCoordinateRegion.guinnessStorehouse().getBinding()
        }
        
        let region = MKCoordinateRegion(center: location.coordinate, span:  MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
        
        return region.getBinding()
    }
    
    var body: some View {
        
        if let region {
            Map(coordinateRegion: region, interactionModes: .all, showsUserLocation: true, userTrackingMode: .constant(.follow), annotationItems: locations)  { location in
                MapAnnotation(coordinate: location.coordinate) {
                    NavigationLink {
                        Text(location.name)
                    } label: {
                        Circle()
                            .stroke(.gray, lineWidth: 3)
                            .frame(width: 44, height: 44)
                    }
                }
            }
        }
    }
}

struct SmallMapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
