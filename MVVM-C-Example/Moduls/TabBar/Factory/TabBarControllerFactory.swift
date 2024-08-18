//
//  TabBarControllerFactory.swift
//  MVVM-C-Example
//
//  Created by mert alp on 17.08.2024.
//
import UIKit

struct TabBarControllerFactory {
    
    static func createTabBarController(
        homeCoordinator: HomeCoordinator,
        profileCoordinator: ProfileCoordinator
    ) -> UITabBarController {
        
        // Setup Home Coordinator
        homeCoordinator.start()
        let homeNavigationController = homeCoordinator.navigationController
        homeNavigationController.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 0)
        
        // Setup Profile Coordinator
        profileCoordinator.start()
        let profileNavigationController = profileCoordinator.navigationController
        profileNavigationController.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(systemName: "person"), tag: 1)
        
        // Create Tab Bar Controller
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [homeNavigationController, profileNavigationController]
        
        return tabBarController
    }
}
