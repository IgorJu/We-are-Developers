//
//  Test.swift
//  We are Developers
//
//  Created by Igor on 26.04.2023.
//

struct QuizItem {
    let title: String
    let answer: Answer
    
    static func getQuizItems() -> [QuizItem] {
        var items: [QuizItem] = []
        let item = DataStoreAnswers.shared
        for answer in item.answers {
            let item = QuizItem(
                title: item.questionTitle,
                answer: Answer(
                    title: answer.title,
                    fan: answer.fan,
                    definition: answer.definition
                )
            )
            items.append(item)
        }
        return items
    }
}

struct Answer {
    let title: String
    let fan: String
    let definition: String
}
