//
//  Extension + UIViewController.swift
//  We are Developers
//
//  Created by Igor on 26.04.2023.
//

import UIKit

extension UIViewController {
    func setupGradient() {
        let primaryColor = UIColor(
            red: 7/255,
            green: 150/255,
            blue: 127/255,
            alpha: 1
        )
        
        let secondaryColor = UIColor(
            red: 110/255,
            green: 234/255,
            blue: 15/255,
            alpha: 1
        )
        
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
    }
}
