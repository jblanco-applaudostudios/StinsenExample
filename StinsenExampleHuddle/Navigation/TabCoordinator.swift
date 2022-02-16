//
//  TabCoordinator.swift
//  StinsenExampleHuddle
//
//  Created by Josseh Blanco on 14/2/22.
//

import Foundation
import Stinsen
import SwiftUI

final class TabCoordinator: TabCoordinatable {
    
    
    lazy var child = TabChild(startingItems: [
        \TabCoordinator.pets,
         \TabCoordinator.settings
    ], activeTab: 0)
    
    @Route(tabItem: makeSettingsTab) var settings = makeSettings
    @Route(tabItem: makePetsTab) var pets = makePets
    
    func makePets() -> NavigationViewCoordinator<PetsCoordinator> {
        NavigationViewCoordinator(PetsCoordinator())
    }
    
    func makeSettings() -> NavigationViewCoordinator<SettingsCoordinator> {
        NavigationViewCoordinator(SettingsCoordinator())
    }
    
    @ViewBuilder func makePetsTab(isActive: Bool) -> some View {
        VStack {
            Image(systemName: "pawprint")
            Text("Pets")
        }
        .foregroundColor(isActive ? .blue : .black)
    }
    
    @ViewBuilder func makeSettingsTab(isActive: Bool) -> some View {
        VStack {
            Image(systemName: "gear")
            Text("Settings")
        }
        .foregroundColor(isActive ? .blue : .black)
    }
}
