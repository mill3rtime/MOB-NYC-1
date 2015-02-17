//
//  Calculator.swift
//  CalculatorM
//
//  Created by Matt Miller on 2/13/15.
//  Copyright (c) 2015 Matt. All rights reserved.
//

import Foundation


class Calculator: NSObject {
    
    

    //(?!) how to pass a parameter into a func to se a local variable
    
   var calcyArray = [String]()
    

    func compute(num1: String, inputOperator: String, num2: String) -> String {
        
        var oper = inputOperator
        var total: Float = 0
        var thisNum1 = (num1 as NSString).floatValue
        var thisNum2 = (num2 as NSString).floatValue
        
       
        
        if oper == "+" {
            
            total = thisNum1 + thisNum2
            
        }
            
        else if oper == "-" {
            
            total = thisNum1 - thisNum2
            
        }
        
       else if oper == "*" {
            
            total = thisNum1 * thisNum2
            
        }
        
        else if oper == "/" {
            
            total = thisNum1 - thisNum2
            
        }
        
    
        return "\(total)"
           
            
        }
        
   
    }
