//
//  SmallMapView.swift
//  TripTrap
//
//  Created by シェイミ on 08/12/2022.
//

import SwiftUI
import MapKit 

struct SmallMapView: View {
    @StateObject private var locationManager = LocationManager()
    var locations = Location.exampleLocations
    
    var region: Binding<MKCoordinateRegion>? {
        guard let location = locationManager.location else {
            return MKCoordinateRegion.guinnessStorehouse().getBinding()
        }
        
        let region = MKCoordinateRegion(center: location.coordinate, latitudinalMeters: 500, longitudinalMeters: 500)
        
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
                            .stroke(.red, lineWidth: 3)
                            .frame(width: 44, height: 44)
                    }
                }
            }
                .frame(maxHeight: 160)
                .clipShape(RoundedRectangle(cornerRadius: 20))
        }
    }
}

struct SmallMapView_Previews: PreviewProvider {
    static var previews: some View {
        SmallMapView()
    }
}
