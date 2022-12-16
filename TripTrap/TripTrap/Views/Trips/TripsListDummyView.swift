//
//  TripsListDummyView.swift
//  TripTrap
//
//  Created by Htet Myat Moe Myint Kyeal on 14/12/22.
//

import SwiftUI

import SwiftUI

struct TripMockUp: Identifiable {
    let id = UUID()
    let image: String
    let name: String
    let people: String
    let date: String
    let price: String
    let maxPeople: String
    let meetingPoint: String
}

struct UpcomingTrip: View {
    
    let dummyUpcomingTripsData = [
        TripMockUp(image: "shwedagon_pagoda", name: "Shwedagon Pagoda", people: "21", date: "31/Dec/2022", price: "15", maxPeople: "30", meetingPoint: "People's Park Entrance"),
        TripMockUp(image: "mandalay", name: "MahaMyatMuni Pagoda", people: "9", date: "04/Jan/2023", price: "Free", maxPeople: "26", meetingPoint: "Mandalay Royal Palace"),
        TripMockUp(image: "castle", name: "Castle Nuovo", people: "12", date: "12/Jan/2023", price: "10", maxPeople: "20", meetingPoint: "Piazza Municipio"),
        TripMockUp(image: "colosseum", name: "Colosseum", people: "25", date: "13/Jan/2023", price: "40", maxPeople: "50", meetingPoint: "East of the Roman Forum"),
        TripMockUp(image: "guinness", name: "Guinness Storehouse", people: "13", date: "20/Jan/2023", price: "32", maxPeople: "29", meetingPoint: "O'Connell Bridge"),
        TripMockUp(image: "bagan", name: "Ancient City of Bagan", people: "16", date: "13/Feb/2022", price: "100", maxPeople: "40", meetingPoint: "Hotel Bagan"),
        TripMockUp(image: "museumnaples", name: "National Museum", people: "8", date: "14/Mar/2023", price: "Free", maxPeople: "20", meetingPoint: "Piazza Museo"),
        TripMockUp(image: "rockofcashel", name: "Rock of Cashel", people: "4", date: "09/Apr/2023", price: "90", maxPeople: "10", meetingPoint: "Historic Site of Cashel"),
        TripMockUp(image: "palace", name: "Capodimonte Royal Palace", people: "5", date: "01/May/2023", price: "20", maxPeople: "9", meetingPoint: "Capodimonte Royal Palace"),

    ]

    var body: some View {
        List {
            ForEach(vm.savedEntities){ entity in
                TripsRowView(pplGoing: Int(entity.participants), name: entity.name ?? "", price: Int(entity.price), date: entity.date ?? Date())
            }
            }
        }
        
    }


struct PreviousTrip: View {
    
    let dummyPreviousTripsData = [
        TripMockUp(image: "sule_pagoda", name: "Sule Pagoda", people: "8", date: "22/Nov/2022", price: "12", maxPeople: "20", meetingPoint: "Yangon City Hall"),
        TripMockUp(image: "castleovo", name: "Castel Ovo", people: "9", date: "02/Dec/2022", price: "Free", maxPeople: "23", meetingPoint: "Via Eldorado"),
        TripMockUp(image: "nationalpark", name: "Killarney National Park", people: "18", date: "13/Dec/2022", price: "10", maxPeople: "20", meetingPoint: "Killarney National Park Entrance"),
    ]
    
    var body: some View {
        List {
            ForEach(dummyPreviousTripsData) { prevTrip in
                NavigationLink {
                    TripsDetailsDummyView(tripDetail: prevTrip)
                } label: {
                    TripsListDummyView(tripItem: prevTrip)
                }
            }
        }
        .scrollIndicators(.hidden)
    }
}

struct TripsListDummyView: View {
    
    let tripItem: TripMockUp

    var body: some View {
        
        VStack(alignment: .leading) {

            HStack {
                CircleImage(image: Image(tripItem.image))
                    .frame(width: 100, height: 80)
                    .scaledToFit()
                VStack(alignment: .leading)  {
                    Text(tripItem.name)
                        .font(.headline)

                    HStack {
                        Label("\(tripItem.people)", systemImage: "person")
                            .labelStyle(.titleAndIcon)
                        Spacer(minLength: 5)
                        Label("\(tripItem.date)", systemImage: "calendar.circle")
                            .labelStyle(.titleAndIcon)

                    }
                    .padding(.top)
                    
                    Label("\(tripItem.price)", systemImage: "eurosign")
                        .labelStyle(.titleAndIcon)
                }
                Spacer()
            }
            .frame(height: 80)
        }
        
        
        
    }
}

struct TripsListDummyView_Previews: PreviewProvider {
    static var previews: some View {
//        TripsListDummyView()
        UpcomingTrip()
        PreviousTrip()
    }
}
