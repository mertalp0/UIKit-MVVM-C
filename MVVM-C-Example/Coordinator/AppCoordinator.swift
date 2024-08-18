//
//  AppCoordinator.swift
//  MVVM-C-Example
//
//  Created by mert alp on 15.08.2024.
//

import UIKit
class AppCoordinator : BaseCoordinator {
    override func start() {
        let splashCoordinator = SplashCoordinator(navigationController : navigationController)
            splashCoordinator.start()
    }
  
}
