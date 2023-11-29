//
//  BaseView.swift
//  WorkoutApp
//
//  Created by Miras Iskakov on 05.12.2023.
//

import UIKit

class BaseView: UIView {
    override init(frame: CGRect) {
        super .init(frame: frame)
        
        addViews()
        layoutViews()
        configureViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// MARK: - @OBJC Extension BaseView
 
@objc extension BaseView {
    func addViews() {}
    
    func layoutViews() {}
    
    func configureViews() {}
}
