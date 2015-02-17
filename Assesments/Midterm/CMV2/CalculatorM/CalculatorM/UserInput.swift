////
////  UserInput.swift
////  CalculatorM
////
////  Created by Matt Miller on 2/15/15.
////  Copyright (c) 2015 Matt. All rights reserved.
////
//
//import Foundation
//
//class UserInput: AnyObject {
//    



// this code for set calc values should go here




//    
//    func setCalcValues(label: String, kind: String) {
//        
//        
//        //CASE 0: OPERATOR BEFORE NUMBER IN POSITION 1
//        if firstSelectionIsOperator == true && prevTapIsOp == false && position == 1 && kind == "operator" {
//            
//            // do nothing
//            
//            println("//CASE 0: OPERATOR BEFORE NUMBER IN POSITION 1")
//            return
//        }
//            
//            
//            
//            
//            
//            
//            
//            // CASE 1: HITS NUMBER ON POSITION ONE
//        else if prevTapIsOp == false && position == 1 && kind == "number"  {
//            
//            num1 += label
//            
//            // reset and recheck my values
//            position = 1
//            firstSelectionIsOperator = false
//            
//            println("CASE 1: HITS NUMBER ON POSITION ONE")
//            printStatus()
//            
//            
//        }
//            
//            
//            // CASE 2: WHILE ON POSITION ONE HITS OPERATOR
//            else if prevTapIsOp == false && position == 1 && kind == "operator"  {
//            
//            oper = label
//            
//            // reset and recheck my values
//            prevTapIsOp = true
//            position = 2
//            firstSelectionIsOperator = false
//            
//            
//            println("CASE 2: WHILE ON POSITION ONE HITS OPERATOR ")
//            printStatus()
//            
//            
//            
//        }
//            
//            // CASE: WHILE ON POSITION TWO HITS ANOTHER OPERATOR
//            else if prevTapIsOp == true && position == 2 && kind == "operator"  {
//            
//            oper = label
//            
//            // reset and recheck my values
//            prevTapIsOp = true
//            position = 2
//            firstSelectionIsOperator = false
//            
//            println("CASE 3: WHILE ON POSITION TWO HITS ANOTHER OPERATOR ")
//            printStatus()
//            
//            
//        }
//            
//            // CASE 4: HITS NUMBER AFTER HITTING OPERATOR
//            else if prevTapIsOp == true && position == 2 && kind == "number"  {
//            
//            num2 += label
//            
//            // reset and recheck my values
//            prevTapIsOp = false
//            position = 3
//            
//            println("CASE 4: WHILE ON POS 2 HITS NUMBER AFTER HITTING OPERATOR")
//            printStatus()
//            
//            
//        }
//            
//            
//            // CASE 5: HITS ANOTHER NUMBER ON POSITION 3
//            else if prevTapIsOp == false && position == 3 && kind == "number"  {
//            
//            num2 += label
//            
//            // reset and recheck my values
//            prevTapIsOp = false
//            position = 3
//            
//            println("CASE 5: WHILE ON POSITION 3 HITS NUMBER ")
//            printStatus()
//            
//        }
//            
//            
//            // RUN CALCULATIONS HERE
//            
//            // CASE 6: WHILE ON POSITION 3 HITS OPERATOR AFTER HITTING NUMBER
//            else if prevTapIsOp == false && position == 3 && kind == "operator"  {
//            
//            oper = label
//            num1 = num1 + " + " + num2
//            num2 = ""
//            
//            
//            //total = calculator.runEquation()
//            //display total
//            //TODO: num 1 = total
//            
//            // reset and recheck my values
//            prevTapIsOp = true
//            position = 3
//            
//            
//            
//            
//            println(" CASE 6: WHILE ONE POS 3 HITS OPERATOR AFTER HITTING NUMBER ")
//            printStatus()
//            
//            
//        }
//            
//            // CASE 7:WHILE ON POSITION 3 HITS OPERATOR AFTER HITTING OPERATOR
//            else if prevTapIsOp == true && position == 3 && kind == "operator"  {
//            
//            
//            oper = label
//            
//            
//            // reset and recheck my values
//            prevTapIsOp = true
//            position = 3
//            
//            
//            
//            
//            println("CASE 7: WHILE ON POSITION 3 HITS OPERATOR AFTER HITTING OPERATOR")
//            printStatus()
//            
//            
//        }
//            
//            // CASE 8:WHILE ON POSITION 3 HITS NUMBER AFTER HITTING OPERATOR
//            else if prevTapIsOp == true && position == 3 && kind == "number"  {
//            
//            
//            num2 = label
//            
//            
//            // reset and recheck my values
//            prevTapIsOp = false
//            position = 3
//            
//            
//            
//            
//            println("CASE 8:WHILE ON POSITION 3 HITS NUMBER AFTER HITTING OPERATOR")
//            printStatus()
//            
//            
//        }
//        
//        
//        
//        
//        
//    }
//
//    
//}