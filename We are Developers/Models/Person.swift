//
//  Person.swift
//  We are Developers
//
//  Created by Igor on 28.04.2023.
//


struct TeamMate {
    
    let name: String
    let surname: String
    let age: String
    let hobby: String
    let photo: String
    let job: String
    
    var fullname: String {
        name + " " + surname
    }
    
    
    static func getTeamMatesList() -> [TeamMate] {
        var teamMates: [TeamMate] = []
        
        for teamMate in DataStoreForList.shared.teamMates {
            if !teamMate.name.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty {
                teamMates.append(teamMate)
            }
        }
        return teamMates
    }
}
