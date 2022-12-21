//
//  UserProfileTabView.swift
//  TripTrap
//
//  Created by シェイミ on 21/12/2022.
//

import SwiftUI

struct UserProfileTabView: View {
    @State private var isEditing = false
    
    let testUser = UserProfile.exampleUser
    
    var body: some View {
        NavigationStack {
                Form {
                    CircleImage(image: Image(systemName: "person"))
                        .frame(width: 60)
                    Section(header: Text("Names")) {
                        Text(testUser.firstName)
                        Text(testUser.surname)
                        Text(testUser.nickname)
                    }
                    
                    Section(header: Text("Contact")) {
                        Text(testUser.phoneNumber)
                        Text(testUser.emailAddress)
                    }
                    
                    Section(header: Text("Languages")) {
                        Text("English")
                        Text("Chinese")
                        Text("Italian")
                    }
                    
                    Section(header: Text("About Me")) {
                        Text(testUser.aboutInformation)
                    }
                }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        // Edit mode
                    } label: {
//                        Label("Edit", systemImage: "gear")
                        Text("Edit")
                    }
                }
        }
        }
    }
}

struct UserProfileTabView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileTabView()
    }
}
