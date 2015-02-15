//
//  ViewController.swift
//  CalculatorM
//
//  Created by Matt Miller on 2/11/15.
//  Copyright (c) 2015 Matt. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController {
    
    //VARIABLES FOR THE POSITION AND NUM VS OPERATOR LOGIC
    var valueArray = [String]() // 
    var num1: String = ""     // position 1 value in num1 + num 2
    var num2: String = ""     // position 2 value
    var oper: String = ""     // operator value (the "+") in above example
    var prevTapIsOp = false   // tracks previous tap so app can always use last operator
    var position = 1          //  1,2, or 3 could be enum. track progress on calculation
    var numButtonArray = [CalcButton]()
    var operatorButtonArray = [CalcButton]()

    var coolGreen = UIColor(red: 85/255, green: 234/255, blue: 188/255, alpha: 1.0)
    
    
    
    //CAN TOU MAKE THIS DYNAMIC BASED ON LABEL?
    
    func tappedNumber() {
        
        prevTapIsOp = false
    }
    
    func tappedOperator() {
        
        prevTapIsOp = true
    }

    func printStatus() {
    println("num1 is \(num1) num2 is \(num2) position is \(toString(position)) prev tap as operator? \(toString(prevTapIsOp))" )
    }
    
    
    func setCalcValues(label: String, kind: String) {
     
        // CASE: HITS NUMBER ON POSITION ONE
        if prevTapIsOp == false && position == 1 && kind == "number"  {
            
            num1 += label
            
            // reset and recheck my values
            prevTapIsOp = false
            position = 1
            
            
            println("CASE: HITS NUMBER ON POSITION ONE")
            printStatus()
        
            
        }
        
        
        // CASE: HITS OPERATOR WHILE ON POSITION ONE
        else if prevTapIsOp == false && position == 1 && kind == "operator"  {
                
                oper = label
                
                // reset and recheck my values
                prevTapIsOp = true
                position = 2
                
                println("CASE: HITS OPERATOR WHILE ON POSITION ONE")
                printStatus()
                
                
                
        }
        
        // CASE: HITS ANOTHER OPERATOR WHILE ON POSITION TWO
        else if prevTapIsOp == true && position == 2 && kind == "operator"  {
            
            oper = label
            
            // reset and recheck my values
            prevTapIsOp = true
            position = 2
            
            println("CASE: HITS ANOTHER OPERATOR WHILE ON POSITION TWO")
            printStatus()
            
            
        }
        
        // CASE: HITS NUMBER AFTER HITTING OPERATOR
        else if prevTapIsOp == true && position == 2 && kind == "number"  {
                    
                    num2 += label
                    
                    // reset and recheck my values
                    prevTapIsOp = false
                    position = 3
                    
                    println("CASE: HITS NUMBER AFTER HITTING OPERATOR")
                    printStatus()
                    
                    
        }
        
        
        
        
        
        
        
    }
    
    
    
    
    // OUTLETS FOR BUTTONS
    // TODO: user label value and unwrap later
    // TODO: user enum kind later
    

    
    @IBOutlet weak var one: CalcButton!
    
    @IBAction func tapOne(sender: CalcButton) {
        
        
       
        println("tapped1")
        setCalcValues("1", kind: "number")
    }
    
    
     @IBOutlet weak var two: CalcButton!
    
    @IBAction func tapTwo(sender: AnyObject) {
        
        println("tapped2")
        setCalcValues("2", kind: "number")
    }
    

    @IBOutlet weak var three: CalcButton!
    
    @IBAction func tapThree(sender: AnyObject) {
            println("tapped3")
        setCalcValues("3", kind: "number")
    }
    
    
    @IBOutlet weak var plus: CalcButton!
    
    @IBAction func tapPlus(sender: AnyObject) {
        println("tappedplus")
        setCalcValues("+", kind: "operator")
    }
    
    
    override func viewDidLoad() {
          super.viewDidLoad()

        
        numButtonArray = [one,two,three]
        operatorButtonArray = [plus]
        
        
        //set all number button colors
        for var i = 0; i < numButtonArray.count; ++i {
            numButtonArray[i].backgroundColor = coolGreen
            
          
        }
        
        //set number button labels
        for var i = 0, j = 1; i < numButtonArray.count; ++i {
          
            numButtonArray[i].label.text = toString(j)
            ++j
        }
       
        
        for var i = 0; i < operatorButtonArray.count; ++i {
            operatorButtonArray[i].backgroundColor = UIColor.grayColor()
        }
        
        //set operator button labels
        
        plus.label.text = "+"
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


