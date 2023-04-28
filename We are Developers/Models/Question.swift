//
//  Test.swift
//  We are Developers
//
//  Created by Igor on 26.04.2023.
//

struct Question {
    let title: String
    let answers: [Answer]
    
    static func getQuestion() -> Question {
        Question(title: "Сколько у вас есть устройств Apple?",
                 answers: [
                    Answer(title: "0 устройств", fan: .noFan),
                    Answer(title: "1-2 устройств", fan: .like),
                    Answer(title: "3 устройства", fan: .love),
                    Answer(title: "4 устройства", fan: .enjoy),
                    Answer(title: "5 устройств", fan: .mostLover)
                    ]
        )
    }
}

struct Answer {
    let title: String
    let fan: Fan
}

enum Fan: String {
    case noFan = "Вы не фанат Apple"
    case like = "Вы еще не фанат Apple, но все впереди"
    case love = "Вы почти фанат Apple"
    case enjoy = "Вы однозначно фанат Apple"
    case mostLover = "Вы самый настоящий фанат Apple"
    
    var definiton: String {
        switch self {
        case .noFan:
            return "Рекомендуем вам ознакомиться с продукцией Apple. Мы уверены что вам понравится!"
        case .like:
            return "У вас пока мало устройств для того чтобы иметь почетное звание Фаната - Apple. Но мы в вас верим!"
        case .love:
            return "Мы очень рады иметь в наших рядах таких людей как вы, именно для вас мы и стараемся создавать наши приложения!"
        case .enjoy:
            return "Мы гордимся вами. Так держать!"
        case .mostLover:
            return "Apple - это диагноз. Раз вы так любите эту продукцию - ждем вас в рядах разработчиков iOS-приложений"
        }
        
    }
}




