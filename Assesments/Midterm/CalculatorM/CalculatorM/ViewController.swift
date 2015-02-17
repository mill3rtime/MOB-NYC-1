//
//  ViewController.swift
//  CalculatorM
//
//  Created by Matt Miller on 2/11/15.
//  Copyright (c) 2015 Matt. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController, CalcButtonDelegate {
    
    var calculator = Calculator()
    
    
    //VARIABLES FOR THE POSITION AND NUM VS OPERATOR LOGIC
    var valueArray = [String]() // 
    var num1: String = ""     // position 1 value in num1 + num 2
    var num2: String = ""     // position 2 value
    var oper: String = ""     // operator value (the "+") in above example
    var prevTapIsOp = false   // tracks previous tap so app can always use last operator
    var position = 1          //  1,2, or 3 could be enum. track progress on calculation
    var numButtonArray = [CalcButton]()
    var operatorButtonArray = [CalcButton]()
    var firstSelectionIsOperator = true
    var total = "0"

    var coolGreen = UIColor(red: 85/255, green: 234/255, blue: 188/255, alpha: 1.0)
    var cDisplay = "0"
    
    
    // [i].delegate = self
    //
    
    
    //TODO CAN TOU MAKE VALUES DYNAMIC BASED ON LABEL?
    
    func tappedNumber() {
        
        prevTapIsOp = false
    }
    
    func tappedOperator() {
        
        prevTapIsOp = true
    }

    
    
    
    
    // OUTLETS FOR BUTTONS
    // TODO: user label value and unwrap later
    // TODO: user enum kind later
    

    //uncom
   

   
//        
//    @IBAction func tapButton(button: CalcButton) {
//
//    }
    
    func calcButtonPressed(button: CalcButton) {
        let kind = button.kind
        if let name = button.titleLabel?.text {
            setCalcValues(name, kind: kind)
        }
    }

    
   // HALLO THESE ARE MY OUTLETZ
    
    @IBOutlet weak var zero: CalcButton!
    
    @IBOutlet weak var one: CalcButton!
    
    @IBOutlet weak var two: CalcButton!

    @IBOutlet weak var three: CalcButton!
    
    @IBOutlet weak var four: CalcButton!
    
    @IBOutlet weak var five: CalcButton!
    
    @IBOutlet weak var six: CalcButton!
    
    @IBOutlet weak var seven: CalcButton!
    
    @IBOutlet weak var eight: CalcButton!

    @IBOutlet weak var nine: CalcButton!
   
    @IBOutlet weak var divide: CalcButton!
    
    @IBOutlet weak var multiply: CalcButton!
    
    @IBOutlet weak var minus: CalcButton!
    
    @IBOutlet weak var plus: CalcButton!

    @IBOutlet weak var clear: CalcButton!
    
    @IBOutlet weak var point: CalcButton!
    
    @IBOutlet weak var screen: UIView!
    

    override func viewDidLoad() {
          super.viewDidLoad()
        
        numButtonArray = [zero,one,two,three,four,five,six,seven,eight,nine]
        
        operatorButtonArray = [divide,multiply,minus,plus]
        
        //set all number button colors
        for var i = 0; i < numButtonArray.count; ++i {
            numButtonArray[i].backgroundColor = coolGreen
            
            
        }
        
        //set number button labels + make delegate
        for var i = 0, j = 0; i < numButtonArray.count; ++i {
            
            numButtonArray[i].label.text = toString(j)
            ++j
        }
        
        for var i = 0, j = 0; i < numButtonArray.count; ++i {
            
            numButtonArray[i].label.text = toString(j)
            ++j
        }
        
        
        for var i = 0; i < operatorButtonArray.count; ++i {
            operatorButtonArray[i].backgroundColor = UIColor.grayColor()
        }
        
        for var i = 0; i < operatorButtonArray.count; ++i {
            operatorButtonArray[i].delegate = self
            numButtonArray[i].delegate = self
        }
        
        
        //set operator button labels
        
        plus.label.text = "+"
        
        
        
        
        
        
        
    }
    
    
    func printStatus() {
        
        
        
        println("num1 is \(self.num1) num2 is \(self.num2) operator is \(self.oper) total is \(self.total) position is \(toString(self.position)) prev tap as operator? \(toString(self.prevTapIsOp))" )
        
    }
    
    
 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    ////////////////// BUTTON PRESS HANDLING

    
    func setCalcValues(label: String, kind: CalcButton.Kind) {
        
        
        
        
        //CASE 0: OPERATOR BEFORE NUMBER IN POSITION 1
        if firstSelectionIsOperator == true && prevTapIsOp == false && position == 1 && kind == CalcButton.Kind.CalcOperator {
            
            // do nothing
            
            println("//CASE 0: OPERATOR BEFORE NUMBER IN POSITION 1")
            return
        }
            
            
            // CASE 1: HITS NUMBER ON POSITION ONE
        else if prevTapIsOp == false && position == 1 && kind == CalcButton.Kind.CalcNumber {
            
            num1 += label
            
            // reset and recheck my values
            position = 1
            firstSelectionIsOperator = false
            
            println("CASE 1: HITS NUMBER ON POSITION ONE")
            printStatus()
            
            
        }
            
            
            // CASE 2: WHILE ON POSITION ONE HITS OPERATOR
            else if prevTapIsOp == false && position == 1 && kind == "operator"  {
            
            oper = label
            
            // reset and recheck my values
            prevTapIsOp = true
            position = 2
            firstSelectionIsOperator = false
            
            
            println("CASE 2: WHILE ON POSITION ONE HITS OPERATOR ")
            printStatus()
            
            
            
        }
            
            // CASE: WHILE ON POSITION TWO HITS ANOTHER OPERATOR
            else if prevTapIsOp == true && position == 2 && kind == "operator"  {
            
            oper = label
            
            // reset and recheck my values
            prevTapIsOp = true
            position = 2
            firstSelectionIsOperator = false
            
            println("CASE 3: WHILE ON POSITION TWO HITS ANOTHER OPERATOR ")
            printStatus()
            
            
        }
            
            // CASE 4: HITS NUMBER AFTER HITTING OPERATOR
            else if prevTapIsOp == true && position == 2 && kind == "number"  {
            
            num2 += label
            
            // reset and recheck my values
            prevTapIsOp = false
            position = 3
            
            println("CASE 4: WHILE ON POS 2 HITS NUMBER AFTER HITTING OPERATOR")
            printStatus()
            
            
        }
            
            
            // CASE 5: HITS ANOTHER NUMBER ON POSITION 3
            else if prevTapIsOp == false && position == 3 && kind == "number"  {
            
            num2 += label
            
            // reset and recheck my values
            prevTapIsOp = false
            position = 3
            
            println("CASE 5: WHILE ON POSITION 3 HITS NUMBER ")
            printStatus()
            
        }
            
            
            // RUN CALCULATIONS HERE
            
            // CASE 6: WHILE ON POSITION 3 HITS OPERATOR AFTER HITTING NUMBER
            else if prevTapIsOp == false && position == 3 && kind == "operator"  {
            
            oper = label
            total = calculator.compute(num1, inputOperator: oper, num2: num2)
    
            
            num1 = self.total
            
            num2 = ""
            
            
            
            //displayTotal()
          
            
            // reset and recheck my values
            prevTapIsOp = true
            position = 3
            
            
            
            
            println(" CASE 6: WHILE ONE POS 3 HITS OPERATOR AFTER HITTING NUMBER ")
            printStatus()
            
            
        }
            
            // CASE 7:WHILE ON POSITION 3 HITS OPERATOR AFTER HITTING OPERATOR
            else if prevTapIsOp == true && position == 3 && kind == "operator"  {
            
            
            oper = label
            
            
            // reset and recheck my values
            prevTapIsOp = true
            position = 3
            
            
            
            
            println("CASE 7: WHILE ON POSITION 3 HITS OPERATOR AFTER HITTING OPERATOR")
            printStatus()
            
            
        }
            
            // CASE 8:WHILE ON POSITION 3 HITS NUMBER AFTER HITTING OPERATOR
            else if prevTapIsOp == true && position == 3 && kind == "number"  {
            
            
            num2 = label
            
            
            // reset and recheck my values
            prevTapIsOp = false
            position = 3
            
            
            
            
            println("CASE 8:WHILE ON POSITION 3 HITS NUMBER AFTER HITTING OPERATOR")
            printStatus()
            
            
        }
        
        
        
        
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


