//
//  TripsMainView.swift
//  TripTrap
//
//  Created by Htet Myat Moe Myint Kyeal on 09/12/22.
//

import SwiftUI

struct TripsMainView: View {
    
    @State var isUpcomingTrip = true

    
    var dummyTripsArrayOne = ["Upcoming Trip 1", "Upcoming Trip 2", "Upcoming Trip 3", "Upcoming Trip 4", "Upcoming Trip 5"]
    var dummyTripsArrayTwo = ["Previous Trip 1", "Previous Trip 2", "Previous Trip 3", "Previous Trip 4", "Previous Trip 5"]
    
    var body: some View {
        
        NavigationStack {
            VStack {
                Picker("Your Trips", selection: $isUpcomingTrip, content: {
                    Text("Upcoming").tag(true)
                    Text("Previous").tag(false)
                })
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                
                if isUpcomingTrip == true {
                    
                    //dummy temp data
                    UpcomingTrip()
                    
//                    List {
//                        ForEach(dummyTripsArrayOne, id: \.self) { upTrip in
//                            NavigationLink {
//                                TripsDetailsView()
//                            } label: {
//                                TripsRowView()
//                            }
//                        }
//                    }
                } else {
                    
                    //dummy temp data
                    PreviousTrip()
                    
//                    List {
//                        ForEach(dummyTripsArrayTwo, id: \.self) { prevTrip in
//                            Text(prevTrip)
//                        }
//                    }
                }
            }
            .navigationTitle("Trips")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Menu {
                        Section {
                            Button(action: {}, label: {
                                Label(
                                title: { Text("Created by you") },
                                icon: {Image(systemName: "person")})
                            })
                            Button(action: {}, label: {
                                Label(
                                title: { Text("Created by others") },
                                icon: {Image(systemName: "person.3")})
                            })
                        }
                        
                        Menu {
                            Button(action: {}, label: {
                                Label(
                                title: { Text("Last Created") },
                                icon: {Image(systemName: "stopwatch")})
                            })
                            Button(action: {}, label: {
                                Label(
                                title: { Text("Name") },
                                icon: {Image(systemName: "textformat")})
                            })
                            Button(action: {}, label: {
                                Label(
                                title: { Text("Date") },
                                icon: {Image(systemName: "calendar")})
                            })
                            Button(action: {}, label: {
                                Label(
                                title: { Text("Price") },
                                icon: {Image(systemName: "dollarsign.circle")})
                            })
                        } label: {
                            Text("Sort By")
                        }
                        
//                        Section {
//                            Button(action: {}, label: {
//                                Text("Last Created")
//                            })
//                            Button(action: {}, label: {
//                                Text("Name")
//                            })
//                            Button(action: {}, label: {
//                                Text("Date")
//                            })
//                        }
                        
                    } label: {
                        Label(
                        title: { Text("Sort") },
                        icon: {Image(systemName: "line.3.horizontal.decrease.circle")})
                    }
                }
//                ToolbarItem(placement: .navigationBarTrailing) {
//                    Button {
//                        isShowingCreateTripSheet = true
//                    } label: {
//                        Image(systemName: "plus")
//                    }
//                    .sheet(isPresented: $isShowingCreateTripSheet) {
//                        CreateTripView()
//                    }
//                }
                
            }
        }
    }
}

struct TripsMainView_Previews: PreviewProvider {
    static var previews: some View {
        TripsMainView()
    }
}
