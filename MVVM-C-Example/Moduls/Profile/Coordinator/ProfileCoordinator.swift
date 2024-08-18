//
//  ProfileCoordinator.swift
//  MVVM-C-Example
//
//  Created by mert alp on 17.08.2024.
//

import Foundation

class ProfileCoordinator : BaseCoordinator {
    override func start() {
        let profileViewModel = ProfileViewModel()
        let profileViewController = ProfileViewController(viewModel : profileViewModel)
        profileViewController.coordinator = self
        navigationController.pushViewController( profileViewController, animated: true)
    }
    
}
