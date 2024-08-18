//
//  RegisterCoordinator.swift
//  MVVM-C-Example
//
//  Created by mert alp on 16.08.2024.
//

import UIKit
class RegisterCoordinator : BaseCoordinator {
    let registerViewModel = RegisterViewModel()
    
    override func start() {
        let registerViewController = RegisterEmailPasswordViewController(viewModel: registerViewModel)
        registerViewController.coordinator = self
        navigationController.pushViewController(registerViewController, animated: true)

    }
    func showRegisterPersonalInfoViewController() {
          let personalInfoViewController = RegisterPersonalInfoViewController(viewModel: registerViewModel)
          personalInfoViewController.coordinator = self
          navigationController.pushViewController(personalInfoViewController, animated: true)
      }
    
    func back() {
        navigationController.popViewController(animated: true)
        removeChild(self)
        }
}
