//
//  APIService.swift
//  SecretGardenTest
//
//  Created by Carmen on 07.11.21.
//

import Foundation


class APIService {
    static let shared = APIService()
    
    func login(credentials: Credentials,
               completion: @escaping (Result<Bool,Authentication.AuthenticationError>) -> Void) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            // TODO check for correct password
            if credentials.password == "password" {
                completion(.success(true))
            } else {
                completion(.failure(.invalidCredentials))
            }
        }
    }
}
