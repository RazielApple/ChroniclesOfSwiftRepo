//
//  AttactionModel.swift
//  TripTrap
//
//  Created by シェイミ on 08/12/2022.
//

import Foundation
import MapKit

// This is just a test. Not sure what properties will be required.
//struct Attraction: Identifiable, Codable, Hashable {
//    var id: String
//    var name: String
//    //var "location" splitted in latitude and longitude because
//    //if you put directly a CLLocation variable
//    //it throws an error with Codable protocol. Uncomment the following line if you are curious:
//
////    var location_tmp: CLLocation
//    private var latitude: Double
//    private var longitude: Double
//
//    var location: CLLocation {
//        return CLLocation(latitude: latitude, longitude: longitude)
//    }
//
//    var type: String
//    var description: String
//
//}


    
    // MARK: - Welcome
struct Attractions: Identifiable, Codable {
    var id = UUID().uuidString
    
    let type: String
    let features: [Feature]
    }

    // MARK: - Feature
    struct Feature: Codable {
        let type, id: String
        let geometry: Geometry
        let properties: Properties
    }

    // MARK: - Geometry
    struct Geometry: Codable {
        let type: String
        let coordinates: [Double]
    }

    // MARK: - Properties
    struct Properties: Codable {
        let xid, name: String
//        let highlightedName: String
        let dist: Double
        let rate: Int
        let wikidata, kinds: String

        enum CodingKeys: String, CodingKey {
            case xid, name
//            case highlightedName = "highlighted_name"
            case dist, rate, wikidata, kinds
        }
    }







// Extension to the model provides an example that can be used in Xcode previews
extension Attractions {
    
    static let exampleAttractions = Attractions(type: "FeatureCollection",
                                               features: [Feature(type: "Feature", id: "14690932", geometry: Geometry(type: "Point", coordinates: [14.2586927, 40.8539429]),
                                                properties: Properties(xid: "Q3868276", name: "Diocesan Museum of Naples", dist: 818.40216943, rate: 3, wikidata: "Q3868276", kinds: "museums,cultural,interesting_places,art_galleries"))]
    )
    
    
    
    
//    static let exampleAttraction = Attraction(name: "Guinness Storehouse",
//                                              latitude: 53.341648,
//                                              longitude: -6.286763,
//                                              type: "Tourist",
//                                              description: """
//The Guinness Storehouse is a tourist attraction at St. James's Gate Brewery in Dublin, Ireland. Since opening in 2000, it has received over twenty million visitors.
//
//The Storehouse covers seven floors surrounding a glass atrium shaped in the form of a pint of Guinness. The ground floor introduces the beer's four ingredients (water, barley, hops and yeast), and the brewery's founder, Arthur Guinness. Other floors feature the history of Guinness advertising and include an interactive exhibit on responsible drinking. The seventh floor houses the Gravity Bar with views of Dublin and where visitors may drink a pint of Guinness included in the price of admission.
//"""
//
//
//    )
}
