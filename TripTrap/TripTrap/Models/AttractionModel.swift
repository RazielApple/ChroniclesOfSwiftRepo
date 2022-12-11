//
//  AttactionModel.swift
//  TripTrap
//
//  Created by シェイミ on 08/12/2022.
//

import Foundation
import MapKit

// This is just a test. Not sure what properties will be required.
struct Attraction: Identifiable, Codable, Hashable {
    var id: String
    var name: String
    //var "location" splitted in latitude and longitude because
    //if you put directly a CLLocation variable
    //it throws an error with Codable protocol. Uncomment the following line if you are curious:
    
//    var location_tmp: CLLocation
    private var latitude: Double
    private var longitude: Double
    
    var location: CLLocation {
        return CLLocation(latitude: latitude, longitude: longitude)
    }
    
    var type: String
    var description: String
    
}

// Extension to the model provides an example that can be used in Xcode previews
extension Attraction {
    static let exampleAttraction = Attraction(id: "0001",
                                              name: "Guinness Storehouse",
                                              latitude: 53.341648,
                                              longitude: -6.286763,
                                              type: "Tourist",
                                              description: """
The Guinness Storehouse is a tourist attraction at St. James's Gate Brewery in Dublin, Ireland. Since opening in 2000, it has received over twenty million visitors.

The Storehouse covers seven floors surrounding a glass atrium shaped in the form of a pint of Guinness. The ground floor introduces the beer's four ingredients (water, barley, hops and yeast), and the brewery's founder, Arthur Guinness. Other floors feature the history of Guinness advertising and include an interactive exhibit on responsible drinking. The seventh floor houses the Gravity Bar with views of Dublin and where visitors may drink a pint of Guinness included in the price of admission.
"""
    
    
    )
}
