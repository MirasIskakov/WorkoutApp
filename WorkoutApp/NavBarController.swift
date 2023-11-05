//
//  NavBarController.swift
//  WorkoutApp
//
//  Created by Miras Iskakov on 19.11.2023.
//

import UIKit

final class NavBarController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configure()
    }
    
    private func configure() {
        view.backgroundColor = .white
        navigationBar.isTranslucent = false
        navigationBar.standardAppearance.titleTextAttributes = [
            
            .foregroundColor: Resources.Color.titleGrey,
                .font: Resources.Fonts.helvelticaRegular(with: 17)
        ]
    }
}
