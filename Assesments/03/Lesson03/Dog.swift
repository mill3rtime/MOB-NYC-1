//
//  Dog.swift
//  Lesson03
//
//  Created by Matt Miller on 1/17/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import Foundation


class Dog: Animal {
    
    
    override func prettyAnimalName() -> String {
        return "Dog name: " + self.name
    }
    
}


// (?) could have overridden a variable "name" referred to that in the parent class method and redfined namr in subclass right? Instead of ovveriding a method to change a couple words.