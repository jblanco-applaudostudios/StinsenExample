//
//  PetDetailView.swift
//  StinsenExampleHuddle
//
//  Created by Josseh Blanco on 14/2/22.
//

import SwiftUI
import Kingfisher

struct PetDetailView: View {
    
    @EnvironmentObject var router: TabCoordinator.Router
    @ObservedObject var viewModel: PetDetailViewModel
    
    var body: some View {
        
        VStack {
            KFImage(URL(string: viewModel.pet.avatar))
                .resizable()
                .frame(maxHeight: 400)
                .scaledToFill()
                .aspectRatio(contentMode: .fit)
            
            Text(viewModel.pet.name)
                .font(.system(size: 22, weight: .bold))
            Text("Age: \(viewModel.pet.age)")
            
            
            Button(action: {
                router.focusFirst(\.settings)
            }, label: {
                Text("Go to settings")
            })
            
            Spacer()
        }
        .navigationTitle(viewModel.pet.name)
    }
}

struct PetDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PetDetailView(viewModel: .init(pet: .init(name: "Example Pet", age: 15, avatar: "https://www.nhm.ac.uk/content/dam/nhmwww/discover/megalodon/megalodon_warpaint_shutterstock-full-width.jpg.thumb.1160.1160.jpg")))
    }
}
