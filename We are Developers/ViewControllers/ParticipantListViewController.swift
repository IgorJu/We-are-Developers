//
//  ParticipantListViewController.swift
//  We are Developers
//
//  Created by Igor on 26.04.2023.
//

import UIKit

final class ParticipantListViewController: UITableViewController {
    
    @IBOutlet var uiTableView: UITableView!
    var teamMates: [TeamMate]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackgroundColour()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let detailVC = segue.destination as? DetailViewController else { return }
            detailVC.teamMate = teamMates[indexPath.row]
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        teamMates.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let teamMate = teamMates[indexPath.row]
        
        content.text = teamMate.fullname
        cell.contentConfiguration = content
        cell.backgroundConfiguration = .clear()
        return cell
    }
    
    private func setBackgroundColour() {
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
        gradientLayer.frame = uiTableView.bounds
        gradientLayer.colors = [primaryColor.cgColor,secondaryColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 0, y: 1)

        let backgroundView = UIView(frame: uiTableView.bounds)
        backgroundView.layer.insertSublayer(gradientLayer, at: 0)

        uiTableView.backgroundView = backgroundView
    }
}
