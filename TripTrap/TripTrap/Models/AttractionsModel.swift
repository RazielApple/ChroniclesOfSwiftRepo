//
//  AttactionsModel.swift
//  TripTrap
//
//  Created by シェイミ on 08/12/2022.
//

import Foundation
import MapKit



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
    
}
