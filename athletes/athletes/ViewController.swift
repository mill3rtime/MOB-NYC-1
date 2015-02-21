//
//  ViewController.swift
//  athletes
//
//  Created by Matt Miller on 2/18/15.
//  Copyright (c) 2015 Matt. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    
     var athleteNames = [String]()
    
    
    @IBAction func tappedButton(sender: AnyObject) {
        
        for names in athleteNames {
            
            println(names)
        }
        
        
        
    }
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        athleteNames.append(textField.text)
        NSUserDefaults.standardUserDefaults().setObject(athleteNames, forKey: "myNames")
        
        return true
    }

    

    @IBOutlet weak var textField: UITextField!
    

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        
        textField.delegate = self
        
        

        
        //NSUserDefaults.standardUserDefaults().setObject(athleteNames, forKey: "myNames" //when something changes
        
        

        
        if let testing = NSUserDefaults.standardUserDefaults().objectForKey("myNames") as [String]?{
         
            athleteNames = testing
            
            
        }
        
        
       
        
        

        
//      
//        func numberOfSectionsInTableView(tableView: UITableView) -> Int {
//            return 1
//        }
//        
//        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//            return athleteNames.count
//        }
//        
//        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//            var cell = tableView.dequeueReusableCellWithIdentifier("objectCell") as UITableViewCell!
//            if cell == nil {
//                cell = UITableViewCell(style: .Default, reuseIdentifier: "objectCell")
//            }
//        }
//        
        
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

