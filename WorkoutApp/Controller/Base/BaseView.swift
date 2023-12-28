//
//  BaseView.swift
//  WorkoutApp
//
//  Created by Miras Iskakov on 05.12.2023.
//

import UIKit

class BaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        constraintViews()
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setupViews()
        constraintViews()
        configureAppearance()

    }
}

// MARK: - @OBJC Extension BaseView
 
@objc extension BaseView {
    func setupViews() {}
    
    func constraintViews() {}
    
    func configureAppearance() {
        backgroundColor = .white
    }
}
