//
//  JSONdata.swift
//  TripTrap
//
//  Created by Fabio Barbato on 10/12/22.
//

import Foundation

// MARK: - Welcome
struct Attraction: Codable {
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
    let xid, name, highlightedName: String
    let dist: Double
    let rate: Int
    let wikidata, kinds: String

    enum CodingKeys: String, CodingKey {
        case xid, name
        case highlightedName = "highlighted_name"
        case dist, rate, wikidata, kinds
    }
}
