//
//  UIView + ext.swift
//  WorkoutApp
//
//  Created by Miras Iskakov on 29.11.2023.
//

import UIKit

extension UIView {
    func addBottenBorder(with color: UIColor, height: CGFloat) {
        let separetor = UIView()
        separetor.backgroundColor = color
        separetor.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        separetor.frame = CGRect(x: 0,
                                 y: frame.height - height,
                                 width: frame.width,
                                 height: height)
        
        addSubview(separetor)
    }
}
