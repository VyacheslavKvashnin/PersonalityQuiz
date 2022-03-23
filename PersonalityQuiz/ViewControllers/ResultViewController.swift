//
//  ResultViewController.swift
//  PersonalityQuiz
//
//  Created by Вячеслав Квашнин on 21.03.2022.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var iconLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var answerChosen: [Answer]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        getAnimal()
        
    }
    
    private func getAnimal() {
        let animalIntCount = answerChosen.reduce(into: [:]) {
            counts, letter in  counts[letter.animal, default: 0] += 1  }
        
        let sortedAnimal = animalIntCount.sorted { $0.value > $1.value }
        
        guard let icon = sortedAnimal.first?.key else { return }
        iconLabel.text = "Вы - \(String(icon.rawValue))"
        descriptionLabel.text = icon.definition
    }
}
