//
//  LoggedOutView.swift
//  StinsenExampleHuddle
//
//  Created by Josseh Blanco on 14/2/22.
//

import SwiftUI

struct LoggedOutView: View {
    
    @EnvironmentObject var router: MainCoordinator.Router
    
    @State var username = ""
    @State var password = ""
    
    var body: some View {
        VStack {
            Text("Pets App")
                .font(.system(size: 48, weight: .bold))
            Text("You're Logged Out :(")
            TextField("Username", text: $username)
            SecureField("Password", text: $password)
            
            Button(action: {
                router.root(\.tab)
            }, label: {
                Text("Totally safe login")
            })
                
        }
        .padding()
    }
}

struct LoggedOutView_Previews: PreviewProvider {
    static var previews: some View {
        LoggedOutView()
    }
}
