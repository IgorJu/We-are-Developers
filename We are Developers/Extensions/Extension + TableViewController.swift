//
//  Extension + TableViewController.swift
//  We are Developers
//
//  Created by Igor on 27.04.2023.
//

import UIKit

extension UITableViewController {
    func setupTableGradient() {
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
        
        tableView.backgroundView?.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
    }
}

