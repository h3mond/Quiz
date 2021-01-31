//
//  ScoreController.swift
//  QuizFinal
//
//  Created by mac on 1/31/21.
//  Copyright © 2021 mac. All rights reserved.
//

import UIKit

class ScoreController: UIViewController {
    @IBOutlet weak var scoreLabel: UILabel!

    var points: UInt8 = 0
    var questionsCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let p = Int((Int(points) * 100)/questionsCount)
        History.attempts.append(p)
        scoreLabel.text = String(p) + "%"
    }
    
    @IBAction func goBack(_ sender: UIButton) {
        performSegue(withIdentifier: "goBack", sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
