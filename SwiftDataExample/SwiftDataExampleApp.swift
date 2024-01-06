//
//  SwiftDataExampleApp.swift
//  SwiftDataExample
//
//  Created by Omer Cagri Sayir on 6.01.2024.
//

import SwiftData
import SwiftUI

@main
struct SwiftDataExampleApp: App {
    var body: some Scene {
        WindowGroup {
            SwiftDataExampleView()
                .modelContainer(for: PersonModel.self)
        }
    }
}
