//
//  PetsCoordinator.swift
//  StinsenExampleHuddle
//
//  Created by Josseh Blanco on 14/2/22.
//

import Foundation
import Stinsen
import SwiftUI

final class PetsCoordinator: NavigationCoordinatable {
    
    let stack = NavigationStack(initial: \PetsCoordinator.start)
    
    @Root var start = makePetList
    @Route(.push) var petDetails = makePetDetails
    
    @ViewBuilder func makePetList() -> some View {
        PetListView(viewModel: .init())
    }
    
    @ViewBuilder func makePetDetails(for pet: Pet) -> some View {
        PetDetailView(viewModel: .init(pet: pet))
    }
}
