//
//  MapViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class MapViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UITextFieldDelegate {
    

    var key: String?
    var value: String?
    
    
    @IBOutlet weak var keyTextField: UITextField!
    
    @IBOutlet weak var valueTextField: UITextField!
    
    
    @IBOutlet weak var myTableView2: UITableView!
    
    
    var arrayOfDicts = [[String:String]]()
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        // good practice to unregister when uou no longer need to receive, eg leave screen.
        
        // register each object differently
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        
        
        
        
        self.myTableView2.dataSource = self
        self.keyTextField.delegate = self
        self.valueTextField.delegate = self
        
        myTableView2.reloadData()
        
    }
    
    
    
    func keyboardWillShow(notification: NSNotification) {
        
        keyTextField.backgroundColor = UIColor.blueColor()
        valueTextField.backgroundColor = UIColor.blueColor()
    }
    
        
        
        func keyboardWillHide(notification: NSNotification) {
            
            keyTextField.backgroundColor = UIColor.redColor()
            valueTextField.backgroundColor = UIColor.redColor()
        }
        
        
        
        /*
        TODO three: Add TWO text views and a table view to this view controller, either using code or storybaord. Accept keyboard input from the two text views. When the 'return' button is pressed on the SECOND text view, add the text view data to a dictionary. The KEY in the dictionary should be the string in the first text view, the VALUE should be the second.
        
        
        TODO four: Make this class a UITableViewDelegate and UITableViewDataSource that supply this table view with cells that correspond to the values in the dictionary. Each cell should print out a unique pair of key/value that the map contains. When a new key/value is inserted, the table view should display it.
        
        
        TODO five: Make the background of the text boxes in this controller BLUE when the keyboard comes up, and RED when it goes down. Start with UIKeyboardWillShowNotification and NSNotificationCenter.
        */
        
        
        func numberOfSectionsInTableView(tableView: UITableView) -> Int {
            return 1
        }
        
        
        // (?) whats up with: 'numberOfRowsInSection section Int'
        
        
        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
            return arrayOfDicts.count
            
        }
        
        
        // (?) whats up with: 'numberOfRowsInSection section Int'
        
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            
            //ask for a reusable cell from the tableview, the tableview will create a new one if it doesn't have any
            
            
            
            let cell = self.myTableView2.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
            
            // get correponding entry from the array
            
            let row = indexPath.row   //index of a row in a given section, row of the section in your datasource
            
            
            if let printKey = key {
                
                if let printValue = arrayOfDicts[row][printKey]{
                    
                    //Configure the cell
                    
                    cell.textLabel?.text = printKey + ", " + printValue
                    
                }
                
            }
            
            return cell
        }
        
        
        
        func textFieldShouldReturn(textField: UITextField) -> Bool {
            
            
            
            if textField == keyTextField {
                valueTextField.becomeFirstResponder()  // moved focus to value text field
                
            }
            
            if keyTextField.text.isEmpty || valueTextField.text.isEmpty {
                
                return true
            }
            
            
            
            if textField == valueTextField {
                
                key = keyTextField.text   // set key to what user input
                value = valueTextField.text   // set value to what user inputs
                
                if let thisKey =  key {
                    if let thisValue =  value {
                        
                        arrayOfDicts.append([thisKey:thisValue])
                        
                        keyTextField.text = ""   // clear out text field
                        valueTextField.text = ""   // clear out text field
                        valueTextField.resignFirstResponder()  // moved focus to value text field
                        
                        myTableView2.reloadData()
                        
                        
                    }
                }
            }
            
            return true
        }
        
  
    }
    


