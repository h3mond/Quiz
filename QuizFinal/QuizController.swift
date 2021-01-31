//
//  QuizController.swift
//  QuizFinal
//
//  Created by mac on 1/31/21.
//  Copyright © 2021 mac. All rights reserved.
//

import UIKit

private var quizQuesions: [Quiz] = [
    Quiz(question: "What is best country to live in?", answers: ["Kazakhstan", "USA", "Russia", "China"]),
    Quiz(question: "What is my favourite programming language?", answers: ["Kazakh", "C++", "Swift", "Java"]),
    Quiz(question: "?", answers: ["Three", "Four", "Four", "Four"])
]

class QuizController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    
    var points: UInt8 = 0
    var currentQuestion = 0
    var rightAnswerPlacement: UInt32 = 0

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        nextQuestion()
    }
    
    @IBAction func pressed(_ sender: UIButton) {
        if sender.tag == Int(rightAnswerPlacement){
            print("RIGHT")
            points += 1
        } else {
            print("WRONG")
        }
        if(currentQuestion < quizQuesions.count){
            nextQuestion()
        } else {
            performSegue(withIdentifier: "showScore", sender: self)
        }
    }
    
    func nextQuestion() {
        questionLabel.text = quizQuesions[currentQuestion].question
        
        rightAnswerPlacement = arc4random_uniform(4) + 1
        
        var button:UIButton = UIButton()
        
        var x = 1
        for i in 1...4 {
            button = view.viewWithTag(i) as! UIButton
            if i == Int(rightAnswerPlacement) {
                button.setTitle(quizQuesions[currentQuestion].answers[RIGHT_ANSWER_INDEX], for: .normal)
            } else {
                button.setTitle(quizQuesions[currentQuestion].answers[x], for: .normal)
                x += 1
            }
        }
        currentQuestion += 1
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ScoreController {
            destination.points = points
            destination.questionsCount = quizQuesions.count
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
