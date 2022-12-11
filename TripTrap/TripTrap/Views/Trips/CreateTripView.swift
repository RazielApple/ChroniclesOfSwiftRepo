//
//  CreateTripView.swift
//  TripTrap
//
//  Created by シェイミ on 11/12/2022.
//

import SwiftUI

struct CreateTripView: View {
    @State private var searchText: String = ""
    
    var body: some View {
        
        VStack {
            Text("Organise your own trip")
                .font(.title).bold()
            SearchbarView(text: $searchText)
            
            Form {
                
            }
        }
        .padding(.top, 30)
        


    }
}

struct CreateTripView_Previews: PreviewProvider {
    static var previews: some View {
        CreateTripView()
    }
}
