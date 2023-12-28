//
//  SessionController.swift
//  WorkoutApp
//
//  Created by Miras Iskakov on 29.11.2023.
//

import UIKit

class SessionController: BaseController {

    private let timerView: BaseInfoView = {
        let view = BaseInfoView()
        return view
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
}

extension SessionController {
    override func setupViews() {
        super.setupViews()
        
        view.setupView(timerView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            timerView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            timerView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            timerView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            timerView.heightAnchor.constraint(equalToConstant: 300)
            
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        view.backgroundColor = R.Color.background
        
        
        title = R.Strings.NavBar.session
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .session)
         
        addNavBarButton(at: .left, with: R.Strings.Session.navBarLeft)
        addNavBarButton(at: .right, with: R.Strings.Session.navBarRight)
    }
}
