//
//  LoginViewController.swift
//  MVVM-C-Example
//
//  Created by mert alp on 15.08.2024.
//
import UIKit

class LoginViewController : BaseViewController<LoginCoordinator, LoginViewModel> {
    //MARK: - Properties
    private var backButton: UIButton = {
        let button = UIButton()
        let image = UIImage(systemName: "chevron.backward")?.withConfiguration(UIImage.SymbolConfiguration(pointSize: 24, weight: .regular))
        button.setImage(image, for: .normal)
        button.addTarget(nil, action: #selector(handleBackButton), for: .touchUpInside)
        button.tintColor = .white

        return button
    }()
    
    private var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Login"
        label.textColor = .white
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textAlignment = .center
        return label
    }()
    
    private var appBarStackView : UIStackView!
    
    let loginButton = CustomButton(title: "Login",  target: nil, action: #selector(handleLoginButton))
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
}

//MARK: - Helpers
extension LoginViewController {
    func style() {
        self.navigationItem.hidesBackButton = true
        view.backgroundColor = .systemIndigo
        appBarStackView = UIStackView(arrangedSubviews: [backButton , titleLabel])
        appBarStackView.axis = .horizontal
    }
    
    func layout() {
        view.addSubview(appBarStackView)
        view.addSubview(loginButton)
        appBarStackView.translatesAutoresizingMaskIntoConstraints = false
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            
                   backButton.widthAnchor.constraint(equalToConstant: 30),
                   backButton.heightAnchor.constraint(equalToConstant: 30),
                   appBarStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
                  
                  appBarStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
                  appBarStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
                   
                   loginButton.heightAnchor.constraint(equalToConstant: 50),
                   loginButton.topAnchor.constraint(equalTo: appBarStackView.bottomAnchor,constant: 80),
                   loginButton.leadingAnchor.constraint(equalTo:  view.leadingAnchor , constant:  100 ),
                   loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
              ])
    }
}

//MARK: - Selectors
extension LoginViewController {
    @objc func handleBackButton() {
      //  print("handle back button")
        coordinator?.back()
    }
    @objc func handleLoginButton(){
        viewModel.login(completion: { succes in 
            if succes {
                self.coordinator?.showTabBar()
            }
        })
    }
}
