//
//  PetListViewModel.swift
//  StinsenExampleHuddle
//
//  Created by Josseh Blanco on 14/2/22.
//

import Foundation

class PetListViewModel: ObservableObject {

    @Published var pets: [Pet] = [.init(name: "Milaneso", age: 2, avatar: "https://www.purina.es/sites/default/files/styles/nppe_breed_selector_500/public/breed_library/chihuahua_smooth_coat.jpg?itok=hAK_J1ZX"), .init(name: "Blue", age: 5, avatar: "https://static.wikia.nocookie.net/jurassicpark/images/9/9a/Jurassic_world_fallen_kingdom_blue_5_by_giuseppedirosso-dcmb6ad.jpg/revision/latest?cb=20180927010532"), .init(name: "Little guy", age: 5454, avatar: "https://www.nhm.ac.uk/content/dam/nhmwww/discover/megalodon/megalodon_warpaint_shutterstock-full-width.jpg.thumb.1160.1160.jpg") ]
}
