//
//  Elli_s_Cal_CamApp.swift
//  Elli's Cal Cam
//
//  Created by David Quiring on 29.11.23.
//

import SwiftUI
import SwiftData

@main
struct Elli_s_Cal_CamApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
