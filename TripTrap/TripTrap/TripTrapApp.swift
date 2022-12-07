//
//  TripTrapApp.swift
//  TripTrap
//
//  Created by シェイミ on 07/12/2022.
//

import SwiftUI

@main
struct TripTrapApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            Home()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
