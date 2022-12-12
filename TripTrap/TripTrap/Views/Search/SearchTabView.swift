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
    
//    @State private var currentAttractionList: [Feature] = []

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
                        if searchText.contains(" ") {
                            searchText.replace(" ", with: "%20")
                        }
                            
                        
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
                
                
                if !viewModel.attractionsList.isEmpty {
                    List {
                        ForEach(viewModel.attractionsList, id: \.self.id) { item in
                            NavigationLink(destination: AttractionDetailView(attractions: item)) {
                                SearchRowView(feature: item)
                            }
                        }
                    }
                }
                Spacer()

            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchTabView()
    }
}
