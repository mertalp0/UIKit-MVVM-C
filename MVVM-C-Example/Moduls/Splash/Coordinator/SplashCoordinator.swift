//
//  SplashCoordinator.swift
//  MVVM-C-Example
//
//  Created by mert alp on 15.08.2024.
//

import UIKit

class SplashCoordinator: BaseCoordinator {
    override func start() {
        addChild(self)
        let splashViewController = SplashViewController()
        splashViewController.coordinator = self
        navigationController.pushViewController(splashViewController, animated: true)
    }

    func showLogin() {
        let loginCoordinator = LoginCoordinator(navigationController: navigationController)
            loginCoordinator.start()
            
    }
    func showRegister(){
        let registerCoordinator = RegisterCoordinator(navigationController: navigationController)
       
        registerCoordinator.start()
    }
}
