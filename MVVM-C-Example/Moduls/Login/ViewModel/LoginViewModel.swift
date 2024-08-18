//
//  LoginViewModel.swift
//  MVVM-C-Example
//
//  Created by mert alp on 16.08.2024.
//

import Foundation

class LoginViewModel : BaseViewModel , LoginViewModelProtocol {
    @Published var username: String = "mert"
    @Published var password: String = "123"

    func login(completion: @escaping (Bool)->Void){
        startLoading()
        DispatchQueue.global().asyncAfter(deadline: .now() + 4) {
            DispatchQueue.main.async {
                //TODO: change password for login
                let success = (self.username == "mert" && self.password == "1234")
                if success {
                    completion(true)
                } else {
                    completion(false)
                    self.handleError(message: "Invalid username or password")
                }
                self.stopLoading()
            }
        }
    }
}

