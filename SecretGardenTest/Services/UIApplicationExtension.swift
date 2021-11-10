//
//  UIApplicationExtension.swift
//  SecretGardenTest
//
//  Created by Carmen on 07.11.21.
//

import UIKit


extension UIApplication {
    // disable keyboard when tapping outside of login fields
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
