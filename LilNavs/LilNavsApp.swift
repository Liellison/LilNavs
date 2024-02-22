//
//  LilNavsApp.swift
//  LilNavs
//
//  Created by Liellison Menezes on 22/02/24.
//

import SwiftUI

@main
struct LilNavsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
