//
//  TabbarCoordinator.swift
//  MVVM-C-Example
//
//  Created by mert alp on 16.08.2024.
//

import UIKit

class TabBarCoordinator: BaseCoordinator {
    
    private let homeCoordinator = HomeCoordinator(navigationController: UINavigationController())
    private let profileCoordinator = ProfileCoordinator(navigationController: UINavigationController())
    
    override func start() {
        let tabBarController = TabBarControllerFactory.createTabBarController(
            homeCoordinator: homeCoordinator,
            profileCoordinator: profileCoordinator
        )
        navigationController.setViewControllers([tabBarController], animated: true)
    }
}
