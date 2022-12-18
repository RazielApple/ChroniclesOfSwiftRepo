//
//  TripsRowView.swift
//  TripTrap
//
//  Created by Htet Myat Moe Myint Kyeal on 13/12/22.
//

import SwiftUI

struct TripsRowView: View {
    
    @State var pplGoing: Int = 40
    @State var name: String = "name"
    @State var price: Int = 40
    @State var date: Date = Date()

    var body: some View {
        
        VStack(alignment: .leading) {

            HStack {
                CircleImage(image: Image("castle"))
                    .frame(height: 80)
                VStack(alignment: .leading)  {
                    Text(name)
                        .font(.headline)

                    HStack {
                        Label("\(pplGoing)", systemImage: "person")
                            .labelStyle(.titleAndIcon)
                        Spacer(minLength: 5)
                        Label("12/Dec/2022", systemImage: "calendar.circle")
                            .labelStyle(.titleAndIcon)

                    }
                    .padding(.top)
                    
                    
                    Label(String(price), systemImage: "eurosign")
                        .labelStyle(.titleAndIcon)
                }
                Spacer()
            }
            .frame(height: 85)
        }
        
        
        
    }
}

struct TripsRowView_Previews: PreviewProvider {
    static var previews: some View {
        TripsRowView()
    }
}
