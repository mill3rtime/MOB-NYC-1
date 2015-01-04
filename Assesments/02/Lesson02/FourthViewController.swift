//
//  FourthViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
/*
    TODO seven: Hook up the text input box, label and and a ‘calculate’ button. Create a ‘fibonacci adder’ class with a method ‘fibonacciNumberAtIndex' which takes indexOfFibonacciNumber (an integer).  When the button is pressed, create an instance of that class, call the method, and print out the appropriate fibonacci number of an inputted integer.
    The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number.
*/
  
    @IBOutlet weak var inputFibNumber: UITextField!



    @IBOutlet weak var fibLabel: UILabel!

    @IBAction func calcFib(sender: AnyObject) {
        
        if inputFibNumber.text.isEmpty {
            
            return
        }
        
        let fibAdderInstance = fibAdder()
        
        fibLabel.text = "\(fibAdderInstance.fibonacciNumberatIndex(inputFibNumber.text.toInt()!))"
        

        
    }
    
    
    class fibAdder {
        
       
        func fibonacciNumberatIndex(n:Int) -> Int {
            
       
        
        //Error condition:
        
        if(n<0) {
        return -1
        }
     
        else if (n==0){
        return 0
        }
        
        else if (n==1) {
        return 1
        }
        
        else if (n>1) {
        return fibonacciNumberatIndex(n-1) + fibonacciNumberatIndex(n-2);
            }
        
        else {
            
            return 0
            
            }
        } // close fibAdder
        
        
        
     
        
        
    }

    








}
