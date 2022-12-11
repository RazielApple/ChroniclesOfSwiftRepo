//
//  AttractionDetailView.swift
//  TripTrap
//
//  Created by シェイミ on 10/12/2022.
//

import SwiftUI

struct AttractionDetailView: View {
    let exampleImage: String = "https://http.cat/404"
    
    var body: some View {
        GeometryReader { proxy in
            let size = proxy.size
            
            ScrollView {
                Image("guinness")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: size.height / 2)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Attraction Name")
                            .font(.title)
                            .foregroundColor(.primary)
                    }
                    
                    HStack {
                        Text("details")
                        Spacer()
                        Text("details")
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                    
                    Divider()
                    
                    Text("About ")
                        .font(.title2)
                    Text("description")
                }
                .padding()
            }
        }
//        .padding()
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
        AttractionDetailView()
    }
}
