//
//  SearchRowView.swift
//  TripTrap
//
//  Created by シェイミ on 12/12/2022.
//

import SwiftUI

struct SearchRowView: View {
    var feature: Feature
    
    var body: some View {
        Text(feature.properties.name)
    }
}

struct SearchRowView_Previews: PreviewProvider {
    static var previews: some View {
        SearchRowView(feature: Attractions.exampleFeature)
    }
}
