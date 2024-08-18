//
//  HomeViewController.swift
//  MVVM-C-Example
//
//  Created by mert alp on 17.08.2024.
//

import UIKit

class HomeViewController : BaseViewController<HomeCoordinator, HomeViewModel> {
    //MARK: - Proterties

    
    private let label: UILabel  = {
        let label = UILabel()
        label.text = "Home"
        label.textAlignment = .center
        return label
    }()
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        style()
        layout()
    }
}
extension HomeViewController{
    func style(){
        view.backgroundColor = .white
        
    }
    func layout(){
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints
        = false
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
        ])
    }
}

