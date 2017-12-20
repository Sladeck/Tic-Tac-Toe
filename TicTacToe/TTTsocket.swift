//
//  TTTSocket.swift
//  TicTacToe
//
//  Created by SUP'Internet 01 on 13/11/2017.
//  Copyright © 2017 Guillaume Moulin. All rights reserved.
//

import Foundation
import SocketIO


class TTTSocket {
    
    static let sharedInstance = TTTSocket()
    
    let manager = SocketManager(socketURL: URL(string: "http://51.254.112.146:5666")!, config: [.log(true), .compress])
    var socket:SocketIOClient? = nil
    
    init() {
        self.socket = manager.defaultSocket
    }
    
    func establishConnection() {
        self.socket!.connect()
    }
    
    func closeConnection() {
        self.socket!.disconnect()
    }
    
}

//TTTSocket.sharedInstance
