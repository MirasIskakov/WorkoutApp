//
//  BaseController.swift
//  WorkoutApp
//
//  Created by Miras Iskakov on 29.11.2023.
//

import UIKit

class BaseController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configure()
    }
}

@objc extension BaseController {
    
    func addViews() {}
    
    func layoutViews() {}
    
    func configure() {
        view.backgroundColor = Resources.Color.background
        
    }
}
