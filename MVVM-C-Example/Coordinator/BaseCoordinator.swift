//
//  BaseCoordinator.swift
//  MVVM-C-Example
//
//  Created by mert alp on 15.08.2024.
//
import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    func start()
}

class BaseCoordinator: Coordinator {
    
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func start() {
        // This should be overridden by subclasses
    }

    func addChild(_ coordinator: Coordinator) {
        print("childCoordinators")
        print(childCoordinators)
        childCoordinators.append(coordinator)
    }

    func removeChild(_ coordinator: Coordinator) {
        childCoordinators = childCoordinators.filter { $0 !== coordinator}
    }

}
