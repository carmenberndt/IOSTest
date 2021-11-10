//
//  LoginViewModel.swift
//  SecretGardenTest
//
//  Created by Carmen on 07.11.21.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var credentials = Credentials()
    @Published var showProgressView = false
    @Published var error: Authentication.AuthenticationError?
    
    var loginDisabled: Bool {
        credentials.email.isEmpty || credentials.password.isEmpty
    }
    
    func login(completion: @escaping (Bool)-> Void) {
        showProgressView = true
        // bc we update showProgressView, need to capture self to not create a possible memory leak
        APIService.shared.login(credentials: credentials) { [unowned self](result: Result<Bool, Authentication.AuthenticationError>) in
            showProgressView = false
            switch result {
            case .success:
                completion(true)
            case .failure(let authError):
                credentials = Credentials()
                error = authError
                completion(false)
            }
        }
        
    }
    
    
}
