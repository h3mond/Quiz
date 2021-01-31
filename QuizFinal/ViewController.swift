//
//  ViewController.swift
//  QuizFinal
//
//  Created by mac on 1/31/21.
//  Copyright © 2021 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func startQuiz(_ sender: UIButton) {
        performSegue(withIdentifier: "startQuiz", sender: self)
    }

    @IBAction func showHistory(_ sender: UIButton) {
        performSegue(withIdentifier: "showHistory", sender: self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

