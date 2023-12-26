//
//  SessionController.swift
//  WorkoutApp
//
//  Created by Miras Iskakov on 29.11.2023.
//

import UIKit

class SessionController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        config()
    }
    
    func config() {
        title = R.Strings.NavBar.session
        navigationController?.tabBarItem.title = R.Strings.TabBar.session
        
        addNavBarButton(at: .left, with: R.Strings.Session.navBarLeft)
        addNavBarButton(at: .right, with: R.Strings.Session.navBarRight)
    }
}
