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
            surname: "Rukaleev",
            yearOfBirth: "1998",
            age: "25",
            hobby: "Yoga",
            pets: "Cat, dog",
            photo: "igor"
        )
    ]
    
    private init() {}
}


