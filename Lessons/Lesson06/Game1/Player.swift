//
//  File.swift
//  Game1
//
//  Created by Matt Miller on 1/14/15.
//  Copyright (c) 2015 Matt. All rights reserved.
//

import Foundation

class Player {
    
    
    var health: Int = 100
    var message = "hit"    // COME BACK
    var damage = 1
    
    
    
    
    
    func isAlive() -> Bool {
        if health > 0 {
            return true
        }
        return false
        
    }
    
    func attack() -> (message: String, damage: Int) {    // PLAYER attack
        
        
        var aMessage = message
        var aDamage = damage
        
        return (aMessage, aDamage)
    }
    
    
    
    //
    
} // end class player



class GoodPlayer: Player {
    
    
    override init(){
        super.init()
        message = "Good hit"
        damage = 10
        
    }
    
    
}

class BadPlayer: Player {
    
    override init(){
        super.init()
        message = "Bad hit"
        damage = 5
    }
    
}