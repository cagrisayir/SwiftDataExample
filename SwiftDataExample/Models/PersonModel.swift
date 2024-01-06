//
//  PersonModel.swift
//  SwiftDataExample
//
//  Created by Omer Cagri Sayir on 6.01.2024.
//

import Foundation
import SwiftData

@Model
class PersonModel {
    var age: Int
    var name: String

    init(age: Int = 0, name: String = "") {
        self.age = age
        self.name = name
    }
}
