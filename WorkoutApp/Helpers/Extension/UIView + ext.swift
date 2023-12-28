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
    
    func makeSystem(_ button: UIButton) {
        button.addTarget(self,
                         action: #selector(handleIn),
                         for: [ .touchDown,
                                .touchDragInside
                         ])
        
        button.addTarget(self,
                         action: #selector(handleOut),
                         for: [ .touchDragOutside,
                                .touchUpInside,
                                .touchUpOutside,
                                .touchDragExit,
                                .touchCancel
                         ])
    }
    
    @objc func handleIn() {
        UIView.animate(withDuration: 0.15) { self.alpha = 0.45 }
    }
    
    @objc func handleOut() {
        UIView.animate(withDuration: 0.15) { self.alpha = 1 }
    }
    
    func setupView(_ view: UIView) {
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
    }
}


