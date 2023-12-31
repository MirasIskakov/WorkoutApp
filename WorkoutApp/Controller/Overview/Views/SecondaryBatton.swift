//
//  SecondaryBatton.swift
//  WorkoutApp
//
//  Created by Miras Iskakov on 03.12.2023.
//

import UIKit

final class SecondaryBatton: UIButton {
    
    private let lable = UILabel()
    private let iconView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addViews()
        layoutViews()
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setTitle(_ title: String) {
        lable.text = title
    }
}

private extension SecondaryBatton {
    func addViews() {
        setupView(lable)
        setupView(iconView)
    }
    
    func layoutViews() {
        NSLayoutConstraint.activate([
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10),
            iconView.heightAnchor.constraint(equalToConstant: 5),
            iconView.widthAnchor.constraint(equalToConstant: 10),
            
            lable.centerYAnchor.constraint(equalTo: centerYAnchor),
            lable.trailingAnchor.constraint(equalTo: iconView.leadingAnchor),
            lable.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10)
        ])
    }
   
    func configure() {
        
        backgroundColor = R.Color.secondary
        layer.cornerRadius = 14
        makeSystem(self)
        
       // lable.translatesAutoresizingMaskIntoConstraints = false
        lable.textColor = R.Color.active
        lable.textAlignment = .center
        lable.font = R.Fonts.helvelticaRegular(with: 15)
        
       // iconView.translatesAutoresizingMaskIntoConstraints = false
        iconView.image = R.Images.Common.downArrow?.withRenderingMode(.alwaysTemplate)
        iconView.tintColor = R.Color.active
}
}
