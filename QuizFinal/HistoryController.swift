//
//  HistoryController.swift
//  QuizFinal
//
//  Created by mac on 1/31/21.
//  Copyright © 2021 mac. All rights reserved.
//

import UIKit

class HistoryController: UITableViewController {
    fileprivate let CELL_ID = "CELL_ID"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: CELL_ID)
    }
    
    @IBAction func backButton(_ sender: Any) {
        performSegue(withIdentifier: "back", sender: self)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return History.attempts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CELL_ID, for: indexPath)
        cell.textLabel?.text = "Attempt #" + String(indexPath.row + 1) + ": " + String(History.attempts[indexPath.row]) + "%"
        return cell
    }
}
