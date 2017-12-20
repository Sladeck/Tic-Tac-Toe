//
//  PlayMultiController.swift
//  TicTacToe
//
//  Created by SUP'Internet 15 on 20/12/2017.
//  Copyright © 2017 Guillaume Moulin. All rights reserved.
//


import UIKit
import SocketIO

class PlayMultiController : UIViewController {
    
    let socket = TTTSocket.sharedInstance.socket
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.socket!.on("join_game") { data, ack in
            self.performSegue(withIdentifier: "multysegue", sender: "")
        }
    }
    @IBAction func OnlineButton(_ sender: UIButton) {
        self.socket!.emit("join_queue", "killick")
    }
    
}
