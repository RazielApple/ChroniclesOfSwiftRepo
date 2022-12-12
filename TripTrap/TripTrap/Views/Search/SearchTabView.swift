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
            VStack {
                HStack {
                    Text("TripTrap")
                        .font(.title)
                        .bold()
                    Spacer()
                }
                .padding()
                
                SearchbarView(text: $searchText)
                    .onSubmit {
                        var submitText = searchText
                        if searchText.contains(" ") {
                            submitText.replace(" ", with: "%20")
                        }
                        Task {
                            try await viewModel.fetch(searchText: submitText)
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
                    .listStyle(.plain)
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
