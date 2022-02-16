//
//  MainCoordinator.swift
//  StinsenExampleHuddle
//
//  Created by Josseh Blanco on 14/2/22.
//

import Foundation
import Stinsen
import SwiftUI

final class MainCoordinator: NavigationCoordinatable {
    
    let stack = NavigationStack(initial: \MainCoordinator.login)
    
    @Root var login = makeLogin
    @Root var tab = makeTabView
    
    @ViewBuilder func makeLogin() -> some View {
        LoggedOutView()
    }
    
    func makeTabView() -> TabCoordinator {
        TabCoordinator()
    }
}
