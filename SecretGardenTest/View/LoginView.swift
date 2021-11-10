//
//  LoginView.swift
//  SecretGardenTest
//
//  Created by Carmen on 07.11.21.
//

import Foundation
import SwiftUI


struct LoginView: View {
    @StateObject private var loginVM = LoginViewModel()
    @EnvironmentObject var authentication: Authentication
    
    var body: some View {
        VStack {
            Text("Secret Garden")
                .font(.largeTitle)
            TextField("Email Address", text: $loginVM.credentials.email)
                .keyboardType(.emailAddress)
            SecureField("Password", text: $loginVM.credentials.password)
            if loginVM.showProgressView {
                ProgressView()
            }
            Button("Log in") {
                loginVM.login { success in
                    authentication.updateValidation(success: success)
                }
            }
            .disabled(loginVM.loginDisabled)
            .padding(.bottom, 20)
            Image(systemName: "lock.circle")
                .resizable()
                .aspectRatio(1, contentMode: .fit)
                .frame(height: 150)
                .onTapGesture {
                    UIApplication.shared.endEditing()
                }
            Spacer()
        }
        .autocapitalization(.none)
        .textFieldStyle(RoundedBorderTextFieldStyle())
        .padding()
        .disabled(loginVM.showProgressView)
        .alert(item: $loginVM.error) { error in
            Alert(title: Text("Invalid Login"), message:
                    Text(error.localizedDescription))
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
