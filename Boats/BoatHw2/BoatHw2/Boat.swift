//
//  Boat.swift
//  BoatHw2
//
//  Created by Matt Miller on 1/6/15.
//  Copyright (c) 2015 Matt. All rights reserved.
//

import Foundation
import UIKit

//? can you declare a constant without assigning a value




class Boat {
    
let boatName:String = "USS Boat"
var sailState:Bool = true
var statusString: String = ""
    
 init() {}

    
    
    func goFast() {
        
        sailState = true
        statusString = "\(boatName) is lowering the sail"
    }
    
    
    func goSlow() {
  sailState = false
        statusString = "\(boatName) is raising the sail"
        
    }
    
    
    

}
