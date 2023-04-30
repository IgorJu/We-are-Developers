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
            age: "36",
            hobby: "Snowboarding",
            photo: "myPhoto",
            job: "Developer"
        )
        ,
        TeamMate(
            name: "Igor",
            surname: "Rukaleev",
            age: "25",
            hobby: "Yoga",
            photo: "igor",
            job: "Developer - Team Leader"
        )
    ]
    
    private init() {}
}

final class DataStoreAnswers {
    
    static let shared = DataStoreAnswers()
    
    let questionTitle = "Сколько у вас устройств Apple?"
    
    let answers = [
        Answer(
            title: "0 устройств",
            fan: "Вы не фанат Apple",
            definition: "Рекомендуем вам ознакомиться с продукцией Apple. Мы уверены что вам понравится!"
        ),
        Answer(
            title: "1-2 устройств",
            fan: "Вы еще не фанат Apple, но все впереди",
            definition: "У вас пока мало устройств для того чтобы иметь почетное звание Фаната - Apple. Но мы в вас верим!"
        ),
        Answer(
            title: "3 устройства",
            fan: "Вы почти фанат Apple",
            definition: "Мы очень рады иметь в наших рядах таких людей как вы, именно для вас мы и стараемся создавать наши приложения!"
        ),
        Answer(
            title: "4 устройства",
            fan: "Вы однозначно фанат Apple",
            definition: "Мы гордимся вами. Так держать!"
        ),
        Answer(
            title: "5 устройств",
            fan: "Вы самый настоящий фанат Apple",
            definition: "Apple - это диагноз. Раз вы так любите эту продукцию - ждем вас в рядах разработчиков iOS-приложений"
        )
    ]
  
    private init() {}
    
}

