//
//  TestViewController.swift
//  We are Developers
//
//  Created by Igor on 27.04.2023.
//

import UIKit

final class TestViewController: UIViewController {

    @IBOutlet var questionLabel: UILabel!
    @IBOutlet var singleButtons: [UIButton]!
    
    private let question = Question.getQuestion()
    
    private var chosenAnswer: [Answer] = []
    private var currentAnswer: [Answer] {
        question.answers
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGradient()
        questionLabel.text = question.title
        updateTitleForButtons()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultVC = segue.destination as? ResultViewController else { return }
        resultVC.chosenAnswer = chosenAnswer
    }
    
    
    @IBAction func singleButtonPressed(_ sender: UIButton) {
        guard let buttonIndex = singleButtons.firstIndex(of: sender) else { return }
        let answer = currentAnswer[buttonIndex]
        chosenAnswer.append(answer)
        performSegue(withIdentifier: "showResult", sender: nil)
    }
    
    private func updateTitleForButtons() {
        for (button, answer) in zip(singleButtons, question.answers) {
            button.setTitle(answer.title, for: .normal)
            button.setTitleColor(.white, for: .normal)
        }
                
    }
    

}
