//
//  ParticipantListViewController.swift
//  We are Developers
//
//  Created by Igor on 26.04.2023.
//

import UIKit

final class ParticipantListViewController: UITableViewController {
    
    var teamMates: [TeamMate]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradientTable()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let detailVC = segue.destination as? DetailViewController else { return }
            detailVC.teamMate = teamMates[indexPath.row]
        }
    }
    
    //MARK: - Data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        teamMates.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let teamMate = teamMates[indexPath.row]
        
        content.text = teamMate.fullname
        content.textProperties.font = UIFont(name: "HelveticaNeue" , size: 18) ?? UIFont()
        content.textProperties.color = .white
        cell.contentConfiguration = content
        cell.backgroundConfiguration = .clear()
        return cell
    }
}
