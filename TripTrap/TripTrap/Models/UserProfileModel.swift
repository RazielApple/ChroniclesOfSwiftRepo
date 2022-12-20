//
//  UserProfileModel.swift
//  TripTrap
//
//  Created by シェイミ on 20/12/2022.
//

import Foundation
import SwiftUI

struct UserProfile: Identifiable {
    var id = UUID().uuidString
    
    var firstName: String
    var surname: String
    var nickname: String
    
    var profilePic: Image
    
    var phoneNumber: String
    var emailAddress: String
    
    var languages: Set<Languages>
    
    var aboutInformation: String
 
}

enum Languages: String {
    case english = "English"
    case italian = "Italian"
    case chinese = "Chinese"
    case japanese = "Japanese"
    case korean = "Korean"
}

extension UserProfile {
    static let exampleUser = UserProfile(firstName: "FirstName",
                                         surname: "Surname",
                                         nickname: "Jimmy",
                                         profilePic: Image("guinness"),
                                         phoneNumber: "+3530987654",
                                         emailAddress: "me@here.com",
                                         languages: Set([Languages.english, Languages.italian]),
                                         aboutInformation: "Lorem Ipsum")
}



