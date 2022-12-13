//
//  TripsRowView.swift
//  TripTrap
//
//  Created by Htet Myat Moe Myint Kyeal on 13/12/22.
//

import SwiftUI

struct TripsRowView: View {
    
    @State var pplGoing: Int = 40

    var body: some View {
        
        VStack(alignment: .leading) {

            HStack {
                CircleImage(image: Image("guinness"))
                    .frame(height: 80)
                VStack(alignment: .leading)  {
                    Text("Castle Nuovo")
                        .font(.headline)

                    HStack {
                        Label("\(pplGoing)", systemImage: "person")
                            .labelStyle(.titleAndIcon)
                        Spacer(minLength: 5)
                        Label("12/Dec/2022", systemImage: "calendar.circle")
                            .labelStyle(.titleAndIcon)

                    }
                    .padding(.top)
                    
                    
                    Label("1000", systemImage: "eurosign")
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
