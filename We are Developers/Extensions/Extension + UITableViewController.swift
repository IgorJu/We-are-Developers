//
//  Extension + UITableViewController.swift
//  We are Developers
//
//  Created by Igor on 28.04.2023.
//

import UIKit
extension UITableViewController {
     func setupGradientTable() {
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
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = tableView.bounds
        gradientLayer.colors = [primaryColor.cgColor,secondaryColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)
        
        let backgroundView = UIView(frame: tableView.bounds)
        backgroundView.layer.insertSublayer(gradientLayer, at: 0)
        
        tableView.backgroundView = backgroundView
    }
}
