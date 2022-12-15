//
//  AttractionDetailView.swift
//  TripTrap
//
//  Created by シェイミ on 10/12/2022.
//

import SwiftUI

struct AttractionDetailView: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    @State private var isShowingCreateTripSheet: Bool = false
    
    var attractions: Feature
    
    //    let exampleImage: String = "https://http.cat/404"
    
    var body: some View {
        GeometryReader { proxy in
            let size = proxy.size
            
            ScrollView {
                Image("guinness")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: size.height / 2)
                    .frame(maxWidth: size.width)
                
                LazyVStack(alignment: .leading, pinnedViews: .sectionHeaders) {
                    Section(header: HeaderView(name: attractions.properties.name)) {
                        
                        HStack {
                            Text("Brewery")
                            Spacer()
                        }
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        
                        Divider()
                        
                        Text("About\n")
                            .font(.title2)
                        Text(attractions.properties.wikidata)
                        
                        Text("""
                                    Guinness Storehouse is a tourist attraction at St. James's Gate Brewery in Dublin, Ireland. Since opening in 2000, it has received over twenty million visitors.
                                    
                                    The Storehouse covers seven floors surrounding a glass atrium shaped in the form of a pint of Guinness.[5] The ground floor introduces the beer's four ingredients (water, barley, hops and yeast), and the brewery's founder, Arthur Guinness. Other floors feature the history of Guinness advertising and include an interactive exhibit on responsible drinking. The seventh floor houses the Gravity Bar with views of Dublin and where visitors may drink a pint of Guinness included in the price of admission.
                                    
                                    """)
                        
                        Text("""
                                    Guinness Storehouse is a tourist attraction at St. James's Gate Brewery in Dublin, Ireland. Since opening in 2000, it has received over twenty million visitors.
                                    
                                    The Storehouse covers seven floors surrounding a glass atrium shaped in the form of a pint of Guinness.[5] The ground floor introduces the beer's four ingredients (water, barley, hops and yeast), and the brewery's founder, Arthur Guinness. Other floors feature the history of Guinness advertising and include an interactive exhibit on responsible drinking. The seventh floor houses the Gravity Bar with views of Dublin and where visitors may drink a pint of Guinness included in the price of admission.
                                    
                                    """)
                        
                        
                    }
                    
                    
                }
                .padding()
            }
            .scrollIndicators(.hidden)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        isShowingCreateTripSheet.toggle()
                    } label: {
                        
                        Text("Create new trip")
                        
                    }
                    .sheet(isPresented: $isShowingCreateTripSheet) {
                        NewTripPlanView(image: "guinness")
                    }
                }
            }
        }
    }
}


struct image: View {
    var imageURL: String
    
    var body: some View {
        AsyncImage(url: URL(string: imageURL)) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
        } placeholder: {
            Color.gray
        }
    }
}

struct AttractionDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AttractionDetailView(attractions: Attractions.exampleFeature)
    }
}

struct HeaderView: View {
    @Environment(\.colorScheme) var colorScheme: ColorScheme
    var name: String
    var body: some View {
        HStack {
            
            Text(name)
                .font(.title2)
                .foregroundColor(.primary)
            Spacer()
        }
        .padding(.vertical)
        .frame(maxWidth: .infinity)
        .background(colorScheme == .light ? Color.white : Color.black)
        
    }
}
