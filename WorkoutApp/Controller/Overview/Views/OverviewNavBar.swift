//
//  OverviewNavBar.swift
//  WorkoutApp
//
//  Created by Miras Iskakov on 05.12.2023.
//

import UIKit

final class OverviewNavBar: BaseView {
    
    private let titleLabel = UILabel()
    private let allWorkoutsButton = SecondaryBatton()
    private let addButton = UIButton()
    
    private let weekView = WeekView()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        addBottenBorder(with: R.Color.separator, height: 1)

    }

    func addAllWorkoutsAction(_ action: Selector, with target: Any?) {
        allWorkoutsButton.addTarget(target, action: action, for: .touchUpInside)
    }
    
    func addAditingAction(_ action: Selector, with target: Any?) {
        addButton.addTarget(target, action: action, for: .touchUpInside)
    }
}

extension OverviewNavBar {
    override func setupViews() {
        super.setupViews()
        
        setupView(titleLabel)
        setupView(allWorkoutsButton)
        setupView(addButton)
        setupView(weekView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            addButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            addButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            addButton.heightAnchor.constraint(equalToConstant: 28),
            addButton.widthAnchor.constraint(equalToConstant: 28),
            
            allWorkoutsButton.topAnchor.constraint(equalTo: addButton.topAnchor),
            allWorkoutsButton.trailingAnchor.constraint(equalTo: addButton.leadingAnchor, constant: -15),
            allWorkoutsButton.heightAnchor.constraint(equalToConstant: 28),
            allWorkoutsButton.widthAnchor.constraint(equalToConstant: 130),
            
            titleLabel.centerYAnchor.constraint(equalTo: allWorkoutsButton.centerYAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: allWorkoutsButton.leadingAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            
            weekView.topAnchor.constraint(equalTo: addButton.bottomAnchor, constant: 15),
            weekView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15),
            weekView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15),
            weekView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            weekView.heightAnchor.constraint(equalToConstant: 50)
            
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        backgroundColor = .white
        
       // titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.text = R.Strings.NavBar.overview
        titleLabel.textColor = R.Color.titleGray
        titleLabel.font = R.Fonts.helvelticaRegular(with: 22)
        
       // allWorkoutsButton.translatesAutoresizingMaskIntoConstraints = false
        allWorkoutsButton.setTitle(R.Strings.Overview.allWorkoutsButton)
        
       // addButton.translatesAutoresizingMaskIntoConstraints = false
        addButton.setImage (R.Images.Common.add, for: .normal)
        
    }
}
