//
//  AppDelegate.swift
//  SecretGardenTest
//
//  Created by Carmen on 07.11.21.
//

import UIKit
import SwiftUI

@main
struct SecretGardenTest_App: App {
    @StateObject var authentication = Authentication()
    
    var body: some Scene {
        WindowGroup {
            if authentication.isValidated {
                ContentView()
                    .environmentObject(authentication)
            } else {
                LoginView()
                    .environmentObject(authentication)
            }
        }
    }
}
