//
//  TripsDetailsView.swift
//  TripTrap
//
//  Created by Htet Myat Moe Myint Kyeal on 13/12/22.
//

import SwiftUI

struct TripsDetailsView: View {
    var body: some View {
        List {
            Section {
                
                // TODO: replace this image with the imageView function
                Image("castle")
                    .resizable()
                    .aspectRatio(4/3, contentMode: .fit)
                    .cornerRadius(8)
                
                Text("Castle Nuovo")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Grid {
                    GridRow {
                        TripsInfoChipView("5", systemImage: "person")
                        Spacer()
                        TripsInfoChipView("20/Dec/2022", systemImage: "calendar")
                        Spacer()
                        TripsInfoChipView("Free", systemImage: "eurosign")
                    }
                }
            }
            .listRowSeparator(.hidden)
            .listRowBackground(Color.clear)
            
            Section {
                Text("40")
            } header: {
                Text("Maximum People Allowed")
            }
            
            Section {
                Text("Piazza Municipio")
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
        .navigationTitle("Castle Nuovo")
    }
    
    
//    private var imageView: some View {
//        Group {
//            if let image = apiDataDummy.image, let uiImage = UIImage(data: image) {
//                Image(uiImage: uiImage)
//                    .resizable()
//                    .aspectRatio(4/3, contentMode: .fill)
//                    .clipShape(RoundedRectangle(cornerRadius: 8))
//            } else {
//                Image(systemName: "photo")
//                    .resizable()
//                    .aspectRatio(4/3, contentMode: .fit)
//                    .opacity(0.24)
//            }
//        }
//    }
}

struct TripsDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        TripsDetailsView()
    }
}
