//
//  ResultViewController.swift
//  We are Developers
//
//  Created by Igor on 27.04.2023.
//

import UIKit

final class ResultViewController: UIViewController {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    var chosenAnswer: [Answer]!
        
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradient()
        navigationItem.hidesBackButton = true
        
        nameLabel.text = chosenAnswer.first?.fan
        descriptionLabel.text = chosenAnswer.first?.definition
    }

    @IBAction func doneButtonTapped(_ sender: UIBarButtonItem) {
        dismiss(animated: true)
    }
}
