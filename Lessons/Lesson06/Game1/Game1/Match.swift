//
//  File.swift
//  Game1
//
//  Created by Matt Miller on 1/14/15.
//  Copyright (c) 2015 Matt. All rights reserved.
//

import Foundation

class Match {
    
    var p1: Player
    var p2: Player
    
    init (player1: Player, player2: Player) {
        
        p1 = player1
        p2 = player2
    }
    
    
    
    func playGame() -> String{
        
     
        
        while p1.isAlive() && p2.isAlive(){
            
            p1.health -= p2.attack().1
            p2.health -= p1.attack().1
            
        }
        if p1.isAlive() {
         
            return "p1 wins!"
           
        }
        else {
            
            return "p2 wins!"
            
        }
        
    }
    
    
    
    
    
}
