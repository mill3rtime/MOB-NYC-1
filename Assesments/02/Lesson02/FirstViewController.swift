//
//  FirstViewController.swift
//  Lesson02
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    /*
    TODO one: hook up a button in interface builder to a new function (to be written) in this class. Also hook up the label to this class. When the button is clicked, the function to be written must make a label say ‘hello world!
    
    TODO two: Connect the ‘name’ and ‘age’ text boxes to this class. Hook up the button to a NEW function (in addition to the function previously defined). That function must look at the string entered in the text box and print out “Hello {name}, you are {age} years old!”
    
    TODO three: Hook up the button to a NEW function (in addition to the two above). Print “You can drink” below the above text if the user is above 21. If they are above 18, print “you can vote”. If they are above 16, print “You can drive”
    
    
    TODO four: Hook up the button to a NEW function (in additino to the three above). Print “you can drive” if the user is above 16 but below 18. It should print “You can drive and vote” if the user is above 18 but below 21. If the user is above 21, it should print “you can drive, vote and drink (but not at the same time!”.
    */
    
    // MM should make value for Age but inputAge is in a diff vlass  var age: Int = inputAge.text.toInt()
    
    
    // MM why won't last method run.
    
    
    @IBOutlet weak var inputName: UITextField!
    
    @IBOutlet weak var inputAge: UITextField!
    
    @IBOutlet weak var genText: UIButton!
    
    @IBOutlet weak var bottomText: UILabel!
    
    
    
    
    @IBAction func genText(sender: AnyObject) {
        
        bottomText.text = "hello world."
    }
    
    
    
    
    @IBAction func nameAge(sender: AnyObject) {
        
        bottomText.text = "Hello \(inputName.text) you are \(inputAge.text) years old"
    }
    
   
    
    
    @IBAction func youCan(sender: AnyObject) {
        
        if let age: Int? = inputAge.text.toInt() {

        
        if age >= 21 {
           
            bottomText.text = "you can drink"
        }
        else if age >= 18 {
        
                bottomText.text = "you can vote"
        }
                else if age >= 16 {
        
                    bottomText.text = "you can drive"
        }
        
        }
    
    } // close youCan

    
    @IBAction func youCan2(sender: AnyObject) {
        
              if let age: Int? = inputAge.text.toInt() {
        
        if age >= 16 && age <= 18 {
            
        bottomText.text = "you can drive"
        
        }
                
                else if age >= 16 && age <= 21 {
                    
                    bottomText.text = "you can drive and vote"
                }
        
        else if age >= 21 {
                
                bottomText.text = "you can drive, vote and drink (but not at the same time!"
            
                }
        
        } // close if let
        
        
        
    } // close youCan2

    

}




    

