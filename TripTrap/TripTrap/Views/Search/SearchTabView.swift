//
//  SearchView.swift
//  TripTrap
//
//  Created by シェイミ on 08/12/2022.
//

import SwiftUI

struct SearchTabView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 40) {
                HStack {
                    Text("TripTrap")
                        .font(.title)
                    Spacer()
                }
                
                SearchbarView(text: $searchText)

                NavigationLink(destination: LargeMapView()) {
                    MapView()
                        .frame(maxHeight: 160)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchTabView()
    }
}
