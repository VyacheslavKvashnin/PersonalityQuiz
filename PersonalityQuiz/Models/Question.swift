//
//  Question.swift
//  PersonalityQuiz
//
//  Created by Вячеслав Квашнин on 21.03.2022.
//

import Foundation

struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        [
            Question(
                title: "Какую пищу вы предпочитаете?",
                type: .single,
                answers: [
                    Answer(title: "Стейк", animal: .dog),
                    Answer(title: "Рыба", animal: .cat),
                    Answer(title: "Морковь", animal: .rabbit),
                    Answer(title: "Кукуруза", animal: .turtle)
                ]
            ),
            Question(
                title: "Что вам нравится больше?",
                type: .multiple,
                answers: [
                    Answer(title: "Плавать", animal: .turtle),
                    Answer(title: "Cпать", animal: .cat),
                    Answer(title: "Бегать", animal: .rabbit),
                    Answer(title: "Есть", animal: .dog)
                ]),
            Question(
                title: "Любите ли вы поездки на машине",
                type: .ranged,
                answers: [
                    Answer(title: "Ненавижу", animal: .dog),
                    Answer(title: "Нервничаю", animal: .cat),
                    Answer(title: "Не замечаю", animal: .turtle),
                    Answer(title: "Обожаю", animal: .rabbit)
                ])
        ]
    }
}

struct Answer {
    let title: String
    let animal: Animal
}

enum ResponseType {
    case single
    case multiple
    case ranged
}

enum Animal: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definision: String {
        switch self {
        case .dog:
            return "DOG"
        case .cat:
            return "CAT"
        case .rabbit:
            return "RABBIT"
        case .turtle:
            return "TURTLE"
        }
    }
}
