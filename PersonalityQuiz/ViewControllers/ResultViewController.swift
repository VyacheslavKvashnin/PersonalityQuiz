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
        
    }
    
    func getAnimal(in animals: [Answer]) {
      
    }
}
