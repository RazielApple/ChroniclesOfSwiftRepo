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
        VStack(alignment: .leading) {
            HStack {
                CircleImage(image: Image("guinness"))
                VStack(alignment: .leading)  {
                    Text(feature.properties.name)
                        .font(.title3)
                        .layoutPriority(1)
                    Text(feature.properties.wikidata)
                    
                }
                Spacer()
            }
            .frame(height: 60)
        }
        
        
        
    }
}

struct SearchRowView_Previews: PreviewProvider {
    static var previews: some View {
        SearchRowView(feature: Attractions.exampleFeature)
    }
}
