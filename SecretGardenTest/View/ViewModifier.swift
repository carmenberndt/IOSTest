//
//  Toolbar.swift
//  SecretGardenTest
//
//  Created by Carmen on 07.11.21.
//

import Foundation
import SwiftUI

struct ToolBarModifier: ViewModifier {
    func body(content: Content) -> some View {
        return content
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    NavigationLink(destination: ProfileView()) {
                        Image(systemName: "person")
                    }
                    
                    NavigationLink(destination: NotificationCenter()) {
                        Image(systemName: "bell")
                    }
                }
            }
    }
}
