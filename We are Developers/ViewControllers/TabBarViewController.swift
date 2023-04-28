//
//  TabBarViewController.swift
//  We are Developers
//
//  Created by Igor on 26.04.2023.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    let teamMates = TeamMate.getTeamMatesList()
    
    override func viewDidLoad() {
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        guard let participantVC = viewControllers?.first as? ParticipantListViewController else { return }
        participantVC.teamMates = teamMates
        guard let testVC = viewControllers?.last as? TestViewController else { return }
    }
}
