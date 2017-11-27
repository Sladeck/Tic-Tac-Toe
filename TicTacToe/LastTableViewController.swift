//
//  LastTableViewController.swift
//  TicTacToe
//
//  Created by Clementine Ferreol on 13/11/2017.
//  Copyright © 2017 Clementine Ferreol. All rights reserved.
//

import Foundation
import UIKit

class LastTableViewController : UITableViewController {
    var data = Array<[String: String]>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        data.append(["dead": "Player 1", "winner": "Player 2"])
        data.append(["dead": "Player 2", "winner": "Player 1"])
        data.append(["dead": "Player 1", "winner": "Player 2"])
        
        let userDefaults = UserDefaults.standard
        userDefaults.set(data, forKey: "lastkill")
        
        userDefaults.array(forKey: "lastkill")
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView( _ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    override func tableView( _ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "LastCell", for: indexPath)
        let stat = data[indexPath.row]
        
        cell.textLabel?.text = "(\(stat["winner"]!) killed (\(stat["dead"]!)"
        //cell.textLabel?.text = "Section (indexPath.section) Row (indexPath.row)"
        
        return cell
    
    }
}
