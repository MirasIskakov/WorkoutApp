//
//  BaseController.swift
//  WorkoutApp
//
//  Created by Miras Iskakov on 29.11.2023.
//

import UIKit

enum NavBarPosition {
    case left
    case right
    
}



class BaseController: UIViewController {
    
    // MARK: - @OBJC Extension BaseController
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addViews()
        layoutViews()
        configure()
    }
}

// MARK: - @OBJC Extension BaseController

@objc extension BaseController {
    
    func addViews() {}
    
    func layoutViews() {}
    
    func configure() {
        view.backgroundColor = Resources.Color.background
    }
    
    func navBarLeftButtonHandler() {
        print("navBar left button tapped")
    }
    
    func navBarRightButtonHandler() {
        print("navBar right button tapped")
    }
}

// MARK: - Extension BaseController

extension BaseController {
    
    func addNavBarButton(at position: NavBarPosition, with title: String) {
        let button = UIButton(type: .custom)
        button.setTitle(title, for: .normal)
        button.setTitleColor(Resources.Color.active, for: .normal)
        //button.frame = .init(x: 0, y: 0, width: 100, height: 50)
        button.setTitleColor(Resources.Color.inActive, for: .disabled)
        button.titleLabel?.font = Resources.Fonts.helvelticaRegular(with: 17)
        
        switch position {
        case .left:
            button.addTarget(self,
                             action: #selector(navBarLeftButtonHandler),
                             for: .touchUpInside)
            navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        case .right:
            button.addTarget(self,
                             action: #selector(navBarRightButtonHandler),
                             for: .touchUpInside)
            navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
        }
    }
}
