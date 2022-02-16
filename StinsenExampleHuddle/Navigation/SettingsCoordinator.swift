//
//  SettingsCoordinator.swift
//  StinsenExampleHuddle
//
//  Created by Josseh Blanco on 14/2/22.
//

import Foundation
import Stinsen
import SwiftUI

final class SettingsCoordinator: NavigationCoordinatable {
    
    let stack = NavigationStack(initial: \SettingsCoordinator.start)
    
    @Root var start = makeSettings
    
    @ViewBuilder func makeSettings() -> some View {
        SettingsView()
    }
    
}
