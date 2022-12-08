//
//  LargeMapView.swift
//  TripTrap
//
//  Created by シェイミ on 08/12/2022.
//

import SwiftUI

struct LargeMapView: View {
    var body: some View {
        GeometryReader { proxy in
            let size = proxy.size
            
            VStack {
                MapView()
                    .frame(maxHeight: size.height / 2)
                Text("Attraction details down here")
            }
            
        }
        

    }
}

struct LargeMapView_Previews: PreviewProvider {
    static var previews: some View {
        LargeMapView()
    }
}
