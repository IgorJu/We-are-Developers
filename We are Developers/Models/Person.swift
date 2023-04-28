//
//  Person.swift
//  We are Developers
//
//  Created by Igor on 28.04.2023.
//

import Foundation

struct TeamMate {
    
    let name: String
    let surname: String
    let yearOfBirth: String
    let age: String
    let hobby: String
    let pets: String
    let photo: String
    
    var fullname: String {
        name + " " + surname
    }
    
    var description: String {
        name
        + ","
        + age
        + " years old,"
        + "was born in "
        + yearOfBirth
        + "and enjoy "
        + hobby
        + "."
        + name
        + "'s pets are:"
        + pets
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
