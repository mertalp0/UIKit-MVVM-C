//
//  CustomButton.swift
//  MVVM-C-Example
//
//  Created by mert alp on 20.08.2024.
//

import UIKit
class CustomButton : UIButton {
    init(title:String, backgroundColor: UIColor = .systemPink ,target : Any? , action : Selector ){
        super.init(frame: .infinite)
        setTitle(title, for: .normal)
        self.backgroundColor = backgroundColor
        tintColor = .white
        layer.cornerRadius = 12
        addTarget(target ,action:  action , for: .touchUpInside
        )
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    private func setup(){
        translatesAutoresizingMaskIntoConstraints = false
    }
}
