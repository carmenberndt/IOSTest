//
//  Profile.swift
//  SecretGardenTest
//
//  Created by Carmen on 07.11.21.
//

import Foundation
import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var authentication: Authentication
    
    var body: some View {
        NavigationView {
                VStack(alignment: .leading, spacing: 10) {
                    Text("Max Mustermann")
                        .bold()
                        .font(.title)
                    
                    Text("Authorized.. Your are in!")
                        .padding()
                    
                }
        }
        .toolbar {
            Button("Log out") {
                authentication.updateValidation(success: false)
            }
        }
    }
}

#if DEBUG
struct ProfileView_Previews : PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
#endif
