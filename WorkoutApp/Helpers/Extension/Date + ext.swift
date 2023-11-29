//
//  Date + ext.swift
//  WorkoutApp
//
//  Created by Miras Iskakov on 23.12.2023.
//

import Foundation


extension Date {
    private var calendar: Calendar {
        return Calendar.current
    }
    var startOfWeek: Date {
        let components = calendar.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self)
        guard let firstrDay = calendar.date(from: components) else { return self }
        return calendar.date(byAdding: .day, value: 1, to: firstrDay) ?? self
    }
    
    func agoForward(to days: Int) -> Date {
        return calendar.date(byAdding: .day, value: days, to: self) ?? self
    }
}


