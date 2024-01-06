//
//  ContentView.swift
//  SwiftDataExample
//
//  Created by Omer Cagri Sayir on 6.01.2024.
//

import SwiftData
import SwiftUI

struct SwiftDataExampleView: View {
    @Environment(\.modelContext) private var modelContext

    @Query private var people: [PersonModel]

    var body: some View {
        VStack {
            Button("Add person") {
                let name = ["Mark", "Lem", "Chase"].randomElement()!
                let person = PersonModel(name: name)
                modelContext.insert(person)
            }.font(.title)

            List(people) { person in
                Text(person.name)
            }
        }
    }
}

#Preview {
    SwiftDataExampleView()
        .modelContainer(for: PersonModel.self)
}
