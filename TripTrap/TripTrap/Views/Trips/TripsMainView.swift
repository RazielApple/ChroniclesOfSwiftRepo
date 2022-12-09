//
//  TripsMainView.swift
//  TripTrap
//
//  Created by Htet Myat Moe Myint Kyeal on 09/12/22.
//

import SwiftUI

struct TripsMainView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Hello Trips")
            }
            .navigationTitle("Trips")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Edit") {
                        // TODO: edit trips function
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("+") {
                        // TODO: add trips function
                    }
                }
                
            }
        }
    }
}

struct TripsMainView_Previews: PreviewProvider {
    static var previews: some View {
        TripsMainView()
    }
}
