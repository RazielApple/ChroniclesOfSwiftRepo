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
    @StateObject var viewModel = ViewModel()
    
    var body: some Scene {
        WindowGroup {
            Home()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(viewModel)
        }
    }
}
