//
//  ProfileController.swift
//  MVVM-C-Example
//
//  Created by mert alp on 17.08.2024.
//

import UIKit

class ProfileViewController : UIViewController {
    //MARK: - Proterties
    var coordinator : ProfileCoordinator?
    var viewModel : ProfileViewModel
    //MARK: - Lifecycle
    init( viewModel: ProfileViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    private let label: UILabel  = {
        let label = UILabel()
        label.text = "Profile"
        label.textAlignment = .center
        return label
    }()
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        style()
        layout()
    }
}
extension ProfileViewController{
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

