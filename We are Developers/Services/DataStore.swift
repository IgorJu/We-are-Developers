//
//  DataStore.swift
//  We are Developers
//
//  Created by Igor on 28.04.2023.
//

import Foundation


final class DataStoreForList {

    static let shared = DataStoreForList()
    
    let teamMates = [
        TeamMate(
            name: "Andrey",
            surname: "Matviets",
            yearOfBirth: "1987",
            age: "36",
            hobby: "snowboarding",
            pets: "MakBook, iPhone, AirPods",
            photo: "myPhoto"
        )
        ,
        TeamMate(
            name: "Igor",
            surname: "XXXXX",
            yearOfBirth: "XXXX",
            age: "XX",
            hobby: "XXXXXX",
            pets: "XX, XX",
            photo: "igor"
        )
    ]
    
    private init() {}
}


