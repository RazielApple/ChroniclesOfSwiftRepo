//
//  TripTabView.swift
//  TripTrap
//
//  Created by シェイミ on 08/12/2022.
//

import SwiftUI

struct TripTabView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Trips")
                    .font(.title)
                    .bold()
            }
            
            Spacer()
        }
        .padding()
//        .navigationTitle("Trips")
    }
        
}

struct TripTabView_Previews: PreviewProvider {
    static var previews: some View {
        TripTabView()
    }
}
