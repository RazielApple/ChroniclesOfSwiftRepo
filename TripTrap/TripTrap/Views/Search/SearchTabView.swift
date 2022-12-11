//
//  SearchView.swift
//  TripTrap
//
//  Created by シェイミ on 08/12/2022.
//

import SwiftUI

struct SearchTabView: View {
    @StateObject var vm = ViewModel()
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("TripTrap")
                        .font(.title)
                    Spacer()
                }
                NavigationLink(destination: LargeMapView()) {
                    MapView()
                        .frame(maxHeight: 160)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                }
            }
            .padding()
        }.onAppear{
            Task{
                try await vm.fetch()
            }
            }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchTabView()
    }
}
