//
//  Resources.swift
//  WorkoutApp
//
//  Created by Miras Iskakov on 05.11.2023.
//

import UIKit

enum Resources {
    enum Color {
        static var active = UIColor(hexString: "#437BFE")
        static var inActive = UIColor(hexString: "#929DA5")
        
        static var separator = UIColor(hexString: "#E8ECEF")
        static var titleGrey = UIColor(hexString: "#545C77")
    }
    
    enum Strings {
        enum TebBar {
            static let overview = "Overview"
            static let session = "Session"
            static let progress = "Progress"
            static let settings = "Settings"
        }
    }
    
    enum Images {
        enum TebBar {
            static let overview = UIImage(named: "overview_tab")
            static let session = UIImage(named: "session_tab")
            static let progress = UIImage(named: "progress_tab")
            static let settings = UIImage(named: "settings_tab")
        }
    }
    
    enum Fonts {
        static func helvelticaRegular(with size: CGFloat) -> UIFont {
            UIFont(name: "helveltica", size: size) ?? UIFont()
        }
    }
    
    
}
