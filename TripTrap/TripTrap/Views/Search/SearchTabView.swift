//
//  SearchView.swift
//  TripTrap
//
//  Created by シェイミ on 08/12/2022.
//

import SwiftUI

struct SearchTabView: View {
    @EnvironmentObject var viewModel: ViewModel
    @State private var searchText = ""

    var body: some View {
        NavigationStack {
            VStack(spacing: 40) {
                HStack {
                    Text("TripTrap")
                        .font(.title)
                    Spacer()
                }
                .padding()
                
                SearchbarView(text: $searchText)
                    .onSubmit {
                        Task {
                            try await viewModel.fetch(searchText: searchText)
                        }
                    }

                NavigationLink(destination: LargeMapView()) {
                    MapView()
                        .frame(maxHeight: 160)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .padding()
                }
                
                Spacer()
                
                if viewModel.attractionsList != nil {
//                    List {
//                       Text(item.features.properties.name)
//                    }
                }
                
                
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchTabView()
    }
}
