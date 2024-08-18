//
//  SplashViewController.swift
//  MVVM-C-Example
//
//  Created by mert alp on 15.08.2024.
//

import UIKit

class SplashViewController: UIViewController {
    //MARK: - Properties
    var coordinator: SplashCoordinator?
    private var splashTitle : UILabel = {
        let label = UILabel()
        label.text = "Splash View"
        label.textColor = .white
        label.font = .systemFont(ofSize: 32)
        label.textAlignment = .center
        return label
    }()
    
    private var loginButton : UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.backgroundColor = .systemPink
        button.tintColor = .white
        button.layer.cornerRadius = 12
        button.addTarget(nil, action: #selector(handleLoginButton), for: .touchUpInside)
        return button
    }()
    private var registerButton : UIButton = {
        let button = UIButton()
        button.setTitle("Register", for: .normal)
        button.backgroundColor = .systemPink
        button.tintColor = .white
        button.layer.cornerRadius = 12
        button.addTarget(nil, action: #selector(handleRegisterButton), for: .touchUpInside)
        return button
    }()
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
    override func viewWillAppear(_ animated: Bool) {
        
        print("******")
        print("Splash WillAppear")
        print(coordinator?.childCoordinators)
        print("******")
    }
}

//MARK: - Helpers
extension SplashViewController {
    func style(){
        view.backgroundColor = .systemIndigo
        
    }
    func layout(){
        view.addSubview(splashTitle)
        view.addSubview(loginButton)
        view.addSubview(registerButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        splashTitle.translatesAutoresizingMaskIntoConstraints = false
        registerButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            splashTitle.topAnchor.constraint(equalTo: view.topAnchor , constant:  200 ),
            splashTitle.leadingAnchor.constraint(equalTo:  view.leadingAnchor , constant:  100 ),
            splashTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
            
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            loginButton.topAnchor.constraint(equalTo: splashTitle.bottomAnchor,constant: 80),
            loginButton.leadingAnchor.constraint(equalTo:  view.leadingAnchor , constant:  100 ),
            loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
            
            registerButton.heightAnchor.constraint(equalToConstant: 50),
            registerButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor,constant: 80),
            registerButton.leadingAnchor.constraint(equalTo:  view.leadingAnchor , constant:  100 ),
            registerButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
            
            
            
        ])
    }
}


//MARK: - Selectors
extension SplashViewController{
    @objc func handleLoginButton(){
       // print("show login")
        coordinator?.showLogin()
    }
    @objc func handleRegisterButton(){
       // print("show register")
        coordinator?.showRegister()
    }
}
