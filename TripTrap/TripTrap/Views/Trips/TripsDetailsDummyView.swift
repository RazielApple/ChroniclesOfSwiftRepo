//
//  TripsDetailsDummyView.swift
//  TripTrap
//
//  Created by Htet Myat Moe Myint Kyeal on 15/12/22.
//

import SwiftUI

struct TripsDetailsDummyView: View {
    
    let tripDetail: TripMockUp
    
    var body: some View {
        List {
            Section {
                
                Image(tripDetail.image)
                    .resizable()
                    .aspectRatio(4/3, contentMode: .fit)
                    .cornerRadius(8)
                
                Text(tripDetail.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Grid {
                    GridRow {
                        TripsInfoChipView(tripDetail.people, systemImage: "person")
                        Spacer()
                        TripsInfoChipView(tripDetail.date, systemImage: "calendar")
                        Spacer()
                        TripsInfoChipView(tripDetail.price, systemImage: "eurosign")
                    }
                }
            }
            .listRowSeparator(.hidden)
            .listRowBackground(Color.clear)
            
            Section {
                Text(tripDetail.maxPeople)
            } header: {
                Text("Maximum People Allowed")
            }
            
            Section {
                Text(tripDetail.meetingPoint)
            } header: {
                Text("Meeting Point")
            }

            
            Section {
                Text("Lorem ipsum dolor sit amet, et quo facete sadipscing, cu verterem concludaturque vis. Id modus aliquam est. Mel id autem scripta, est vide denique invidunt te, quo erroribus sadipscing ea. Viris insolens sea ei. Qui in imperdiet moderatius, habeo regione disputando te eos. \n \n Lorem ipsum dolor sit amet, et quo facete sadipscing, cu verterem concludaturque vis. Id modus aliquam est. Mel id autem scripta, est vide denique invidunt te, quo erroribus sadipscing ea. Viris insolens sea ei. Qui in imperdiet moderatius, habeo regione disputando te eos.")
            } header: {
                Text("About the Trip")
            }
            
            HStack {
                Spacer()
                Button(action: {
                    print("Joined")
                }, label: {
                    Label(
                    title: { Text("Join the Trip") },
                    icon: {Image(systemName: "person.line.dotted.person")})
                })
                .padding()
                .font(.title3)
                .fontWeight(.bold)
//                .foregroundColor(.white)
//                .background(Color.blue)
            .cornerRadius(8)
                Spacer()
            }
        }
        .navigationTitle(tripDetail.name)
    }
}

//struct TripsDetailsDummyView_Previews: PreviewProvider {
//
//    static var previews: some View {
//        TripsDetailsDummyView()
//    }
//}
