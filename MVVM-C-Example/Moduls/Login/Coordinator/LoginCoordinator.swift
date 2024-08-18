//
//  LoginCoordinator.swift
//  MVVM-C-Example
//
//  Created by mert alp on 16.08.2024.
//

import Foundation

class LoginCoordinator : BaseCoordinator {
    override func start() {
        addChild(self)
         let loginViewModel = LoginViewModel()
         let loginViewController = LoginViewController(viewModel: loginViewModel)
         loginViewController.coordinator = self
         navigationController.pushViewController(loginViewController, animated: true)
     }
    
    func showTabBar() {
         let tabBarCoordinator = TabBarCoordinator(navigationController: navigationController)
         addChild(tabBarCoordinator)
         tabBarCoordinator.start()
         removeChild(self)  // LoginCoordinator'ı kaldırıyoruz çünkü artık TabBarCoordinator yönetiminde olacağız
     }
    
    func back() {
        navigationController.popViewController(animated: true)
        removeChild(self)
        }
 
    
    
}
