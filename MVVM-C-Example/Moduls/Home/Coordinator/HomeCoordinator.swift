//
//  HomeController.swift
//  MVVM-C-Example
//
//  Created by mert alp on 17.08.2024.
//

import Foundation

class HomeCoordinator : BaseCoordinator {
    override func start() {
        let homeViewModel = HomeViewModel()
        let homeViewController = HomeViewController(viewModel : homeViewModel)
        homeViewController.coordinator = self
        navigationController.pushViewController(homeViewController, animated: false)
    }
}
