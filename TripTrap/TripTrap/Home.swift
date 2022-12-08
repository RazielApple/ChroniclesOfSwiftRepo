//
//  Home.swift
//  TripTrap
//
//  Created by シェイミ on 07/12/2022.
//

import SwiftUI
import MapKit

struct Home: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        TabView {
            SearchTabView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            
            TripTabView()
                .tabItem {
                    Label("Trips", systemImage: "figure.hiking")
                }
        }
//        .accentColor(.white)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            .environmentObject(ViewModel())
    }
}
