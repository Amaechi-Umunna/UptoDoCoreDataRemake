//
//  UptoDoCoreDataRemakeApp.swift
//  UptoDoCoreDataRemake
//
//  Created by Amaechi Chukwu on 10/12/2022.
//

import SwiftUI

@main
struct UptoDoCoreDataRemakeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
