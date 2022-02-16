//
//  SettingsView.swift
//  StinsenExampleHuddle
//
//  Created by Josseh Blanco on 14/2/22.
//

import SwiftUI

struct SettingsView: View {
    
    @EnvironmentObject var router: MainCoordinator.Router
    
    var body: some View {
        List {
            Section(header: Text("Some settings")) {
                ForEach(0..<10) { number in
                    Text("Setting #\(number)")
                }
            }
            
            Button(role: .destructive, action: {
                
             _ = router
                    .root(\.login)
                    .popToRoot()
                
            }, label: {
                Text("Log Out")
            })
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
