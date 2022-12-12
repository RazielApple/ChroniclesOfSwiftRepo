//
//  AttractionDetailView.swift
//  TripTrap
//
//  Created by シェイミ on 10/12/2022.
//

import SwiftUI

struct AttractionDetailView: View {
    var attractions: Attractions

//    let exampleImage: String = "https://http.cat/404"
    
    var body: some View {
        GeometryReader { proxy in
            let size = proxy.size
            
            ScrollView {
                Image("guinness")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: size.height / 2)
                    .frame(maxWidth: size.width)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text(attractions.features[0].properties.name)
                            .font(.title)
                            .foregroundColor(.primary)
                    }
                    
                    HStack {
                        Text(attractions.features[0].type)
                        Spacer()
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    Divider()
                    
                    Text("About\n")
                        .font(.title2)
                    Text(attractions.features[0].properties.wikidata)
                }
                .padding()
            }
            .scrollIndicators(.hidden)
        }
    }
}


struct image: View {
    var imageURL: String
    
    var body: some View {
        AsyncImage(url: URL(string: imageURL)) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
        } placeholder: {
            Color.gray
        }
    }
}

struct AttractionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AttractionDetailView(attractions: Attractions.exampleAttractions)
    }
}
