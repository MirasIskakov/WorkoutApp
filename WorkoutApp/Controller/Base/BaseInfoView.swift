//
//  BaseInfoView.swift
//  WorkoutApp
//
//  Created by Miras Iskakov on 28.12.2023.
//

import UIKit

final class BaseInfoView: BaseView {
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = R.Fonts.helvelticaRegular(with: 13)
        label.textColor = R.Color.inActive
        label.text = "Пуск"
        return label
    }()
    
    private let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = .blue
        view.layer.backgroundColor = R.Color.separator.cgColor
        view.layer.borderWidth = 1
        view.layer.cornerRadius = 5
        return view
    }()
    
}

extension BaseInfoView {
    override func setupViews() {
        super.setupViews()
        
        setupView(titleLabel)
        setupView(contentView)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            titleLabel.topAnchor.constraint(equalTo: topAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            contentView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            contentView.leadingAnchor.constraint(equalTo: leadingAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor)
            
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        backgroundColor = .clear
    }
}
