//
//  RegisterEmailPasswordViewController.swift
//  MVVM-C-Example
//
//  Created by mert alp on 16.08.2024.
//

import UIKit

class RegisterEmailPasswordViewController : BaseViewController<RegisterCoordinator, RegisterViewModel> {
    //MARK: - Proterties
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
        label.text = "Register Email"
        label.textColor = .white
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textAlignment = .center
        return label
    }()
    private var appBarStackView : UIStackView!
    
    private var nextButton : UIButton = {
        let button = UIButton()
        button.setTitle("Next", for: .normal)
        button.backgroundColor = .systemPink
        button.tintColor = .white
        button.layer.cornerRadius = 12
        button.addTarget(nil, action: #selector(handleNextButton), for: .touchUpInside)
        return button
    }()
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        style()
        layout()
    }
}
//MARK: - Helpers
extension RegisterEmailPasswordViewController{
    func style() {
        self.navigationItem.hidesBackButton = true
        view.backgroundColor = .systemIndigo
        appBarStackView = UIStackView(arrangedSubviews: [backButton , titleLabel])
        appBarStackView.axis = .horizontal
        
        
        
    }
    
    func layout() {
        view.addSubview(appBarStackView)
        view.addSubview(nextButton)
        appBarStackView.translatesAutoresizingMaskIntoConstraints = false
        nextButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            
            backButton.widthAnchor.constraint(equalToConstant: 30),
            backButton.heightAnchor.constraint(equalToConstant: 30),
            appBarStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            
            appBarStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            appBarStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            
            nextButton.heightAnchor.constraint(equalToConstant: 50),
            nextButton.topAnchor.constraint(equalTo: appBarStackView.bottomAnchor,constant: 80),
            nextButton.leadingAnchor.constraint(equalTo:  view.leadingAnchor , constant:  100 ),
            nextButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -100),
            
        ])
        
    }
    
    
}

//MARK: - Selectors
extension RegisterEmailPasswordViewController{
    @objc func handleBackButton(){
        coordinator?.back()
    }
    @objc func handleNextButton(){
        viewModel.name = "Mert"
        coordinator?.showRegisterPersonalInfoViewController()
    }
}
