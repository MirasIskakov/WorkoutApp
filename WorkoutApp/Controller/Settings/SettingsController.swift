//
//  SettingsController.swift
//  WorkoutApp
//
//  Created by Miras Iskakov on 29.11.2023.
//

import UIKit

class SettingsController: BaseController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = R.Strings.NavBar.settings
        navigationController?.tabBarItem.title = R.Strings.TabBar.title(for: .settings)
    }
}
