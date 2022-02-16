//
//  Pet.swift
//  StinsenExampleHuddle
//
//  Created by Josseh Blanco on 14/2/22.
//

import Foundation

struct Pet: Hashable {
    let id = UUID()
    let name: String
    let age: Int
    let avatar: String
}
