//
//  Home.swift
//  TripTrap
//
//  Created by シェイミ on 07/12/2022.
//

import SwiftUI
import MapKit

struct Home: View {
    // Set a state variable to set the centre of the map and zoom level (span)
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 53.35, longitude: -6.266667), span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
    let locationManager = CLLocationManager()
    
    var locations = Location.exampleLocations
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("TripTrap")
                        .font(.title)
                    Spacer()
                }
                
                Map(coordinateRegion: $region, annotationItems: locations)  { location in
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
            .padding()
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
