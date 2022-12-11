//
//  AttractionDetailView.swift
//  TripTrap
//
//  Created by シェイミ on 10/12/2022.
//

import SwiftUI

struct AttractionDetailView: View {
    var attraction: Attraction
    
    
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
                        Text(attraction.name)
                            .font(.title)
                            .foregroundColor(.primary)
                    }
                    
                    HStack {
                        Text(attraction.type)
                        Spacer()
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    Divider()
                    
                    Text("About\n")
                        .font(.title2)
                    Text(attraction.description)
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
        AttractionDetailView(attraction: Attraction.exampleAttraction)
    }
}
