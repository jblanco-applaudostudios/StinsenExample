//
//  PetListView.swift
//  StinsenExampleHuddle
//
//  Created by Josseh Blanco on 14/2/22.
//

import SwiftUI

struct PetListView: View {
    
    @EnvironmentObject var router: PetsCoordinator.Router
    @ObservedObject var viewModel: PetListViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.pets, id: \.id) { pet in
                makePetCard(from: pet)
                    .onTapGesture {
                        router.route(to: \.petDetails, pet)
                    }
            }
        }
        .navigationTitle("Pets")
    }
    
    @ViewBuilder func makePetCard(from pet: Pet) -> some View {
        VStack {
            Text(pet.name)
            Text("Age: \(pet.age)")
        }
    }
}

struct PetListView_Previews: PreviewProvider {
    static var previews: some View {
        PetListView(viewModel: PetListViewModel())
    }
}
