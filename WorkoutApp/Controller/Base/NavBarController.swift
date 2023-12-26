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

            .foregroundColor: R.Color.titleGray,
                .font: R.Fonts.helvelticaRegular(with: 17)
        ]
        
       navigationBar.addBottenBorder(with: R.Color.separator, height: 1)
    }
}
