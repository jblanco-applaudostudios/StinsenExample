//
//  PetDetailViewModel.swift
//  StinsenExampleHuddle
//
//  Created by Josseh Blanco on 14/2/22.
//

import Foundation

class PetDetailViewModel: ObservableObject {

    @Published var pet: Pet
    
    init(pet: Pet) {
        self.pet = pet
    }
}
