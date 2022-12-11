//
//  TripsMainView.swift
//  TripTrap
//
//  Created by Htet Myat Moe Myint Kyeal on 09/12/22.
//

import SwiftUI

struct TripsMainView: View {
    
    @State private var tripState = 0
    @State private var isShowingCreateTripSheet: Bool = false
    
    var dummyTripsArrayOne = ["Upcoming Trip 1", "Upcoming Trip 2", "Upcoming Trip 3", "Upcoming Trip 4", "Upcoming Trip 5"]
    var dummyTripsArrayTwo = ["Previous Trip 1", "Previous Trip 2", "Previous Trip 3", "Previous Trip 4", "Previous Trip 5"]
    
    var body: some View {
        
        NavigationStack {
            VStack {
                Picker("Your Trips", selection: $tripState, content: {
                    Text("Upcoming").tag(0)
                    Text("Previous").tag(1)
                })
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                if tripState == 0 {
                    List {
                        ForEach(dummyTripsArrayOne, id: \.self) { upTrip in
                            Text(upTrip)
                        }
                    }
                } else {
                    List {
                        ForEach(dummyTripsArrayTwo, id: \.self) { prevTrip in
                            Text(prevTrip)
                        }
                    }
                }
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
                        isShowingCreateTripSheet = true
                    }
                    .sheet(isPresented: $isShowingCreateTripSheet) {
                        CreateTripView()
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
