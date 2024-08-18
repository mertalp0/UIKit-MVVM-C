//
//  RegisterPersonalInfoViewController.swift
//  MVVM-C-Example
//
//  Created by mert alp on 16.08.2024.
//

import UIKit

class RegisterPersonalInfoViewController: BaseViewController<RegisterCoordinator, RegisterViewModel> {
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
        label.text = "Register Personal Info"
        label.textColor = .white
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textAlignment = .center
        return label
    }()
    private var appBarStackView : UIStackView!
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        style()
        layout()
       
    }
 
    override init(viewModel: RegisterViewModel) {
        print(viewModel.name)
        super.init(viewModel: viewModel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
//MARK: - Helpers
extension RegisterPersonalInfoViewController{
    func style() {
        self.navigationItem.hidesBackButton = true
        view.backgroundColor = .systemIndigo
        appBarStackView = UIStackView(arrangedSubviews: [backButton , titleLabel])
        appBarStackView.axis = .horizontal
    }
    
    func layout() {
        view.addSubview(appBarStackView)
        appBarStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            
            backButton.widthAnchor.constraint(equalToConstant: 30),
            backButton.heightAnchor.constraint(equalToConstant: 30),
            appBarStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            
            appBarStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            appBarStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
        ])
    }
}

//MARK: - Selectors
extension RegisterPersonalInfoViewController{
    @objc func handleBackButton(){
        coordinator?.back()
    }
}
