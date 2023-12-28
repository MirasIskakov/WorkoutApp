//
//  WeekdayView.swift
//  WorkoutApp
//
//  Created by Miras Iskakov on 15.12.2023.
//

import UIKit

extension WeekView {
    final class WeekdayView: BaseView {
         
        private let nameLabel = UILabel()
        private let dateLabel = UILabel()
        private let stackView = UIStackView()
        
        // Функция принимает число и день недели
        func configure(with index: Int, and name: String) {
            let startOfWeek = Date().startOfWeek
            let currentDay = startOfWeek.agoForward(to: index)
            let day = Calendar.current.component(.day, from: currentDay)
            
            let isToday = currentDay.stripTime() == Date().stripTime()
            
            backgroundColor = isToday ? R.Color.active : R.Color.background
            
            nameLabel.text = name.uppercased()
            nameLabel.textColor = isToday ? .white : R.Color.inActive
            
            dateLabel.text = "\(day)"
            dateLabel.textColor = isToday ? .white : R.Color.inActive
        }
    }
}
extension WeekView.WeekdayView {
    
    override func setupViews() {
        super.setupViews()
        
        setupView(stackView)
        
        stackView.addArrangedSubview(nameLabel)
        stackView.addArrangedSubview(dateLabel)
    }
    
    override func constraintViews() {
        super.constraintViews()
        
        NSLayoutConstraint.activate([
            stackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            stackView.centerYAnchor.constraint(equalTo: centerYAnchor)
           
        ])
    }
    
    override func configureAppearance() {
        super.configureAppearance()
        
        layer.cornerRadius = 5
        layer.masksToBounds = true
        
        nameLabel.font = R.Fonts.helvelticaRegular(with: 9)
        nameLabel.textAlignment = .center
        
        dateLabel.font = R.Fonts.helvelticaRegular(with: 15)
        dateLabel.textAlignment = .center
        
        stackView.spacing = 3
        stackView.axis = .vertical
    }
}
