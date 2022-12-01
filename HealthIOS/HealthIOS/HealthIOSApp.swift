//
//  HealthIOSApp.swift
//  HealthIOS
//
//  Created by kuet on 1/12/22.
//

import SwiftUI

@main
struct HealthIOSApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
