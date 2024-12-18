//
//  LoginCoordinator.swift
//  MVVM-C-Example
//
//  Created by mert alp on 16.08.2024.
//

import Foundation

class LoginCoordinator : BaseCoordinator {
    override func start() {
         let loginViewModel = LoginViewModel()
         let loginViewController = LoginViewController(viewModel: loginViewModel)
         loginViewController.coordinator = self
       print( self.parentCoordinators?.childCoordinators)
         navigationController.pushViewController(loginViewController, animated: true)
     }
    
    func showTabBar() {
         let tabBarCoordinator = TabBarCoordinator(navigationController: navigationController)
         addChild(tabBarCoordinator)
         tabBarCoordinator.start()
         removeChild(self)
     }
    
    func back() {
        removeChild((self.parentCoordinators?.childCoordinators.last)!)
        }
 
    
    
}
