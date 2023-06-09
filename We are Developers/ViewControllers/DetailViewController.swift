//
//  DetailViewController.swift
//  We are Developers
//
//  Created by Igor on 26.04.2023.
//

import UIKit

final class DetailViewController: UIViewController {
    
    @IBOutlet var avatarImageView: UIImageView! {
        didSet {
            avatarImageView.layer.cornerRadius = avatarImageView.frame.height / 2
        }
    }
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var ageLabel: UILabel!
    @IBOutlet var hobbyLabel: UILabel!
    @IBOutlet var projectPositionLabel: UILabel!
    
    var teamMate: TeamMate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradient()
        
        avatarImageView.image = UIImage(named: teamMate.photo)
        title = teamMate.fullname
        nameLabel.text = teamMate.name
        surnameLabel.text = teamMate.surname
        ageLabel.text = teamMate.age
        hobbyLabel.text = teamMate.hobby
        projectPositionLabel.text = teamMate.job
    }
}
