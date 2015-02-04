//
//  ViewController.swift
//  drawing in code class
//
//  Created by Matt Miller on 2/2/15.
//  Copyright (c) 2015 Matt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //create the view
        
        
        
        
        //        var container = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        
        var userNameField = UITextField(frame: CGRect(x: 50, y: 50, width: (self.view.frame.size.width - 100), height: 50))
        
        userNameField.backgroundColor = UIColor.grayColor()
        
        
        var passwordField = UITextField(frame: CGRect(x: 50, y: 125, width: (self.view.frame.size.width - 100), height: 50))
        
        passwordField.backgroundColor = UIColor.blueColor()
        
        
        var loginButton = UIButton(frame:CGRect(x: 50, y: 150, width: (self.view.frame.size.width - 100), height: 50))
        
        loginButton.backgroundColor = UIColor.brownColor()
        
        
        var titleLabel = UILabel(frame:CGRect(x: 50, y: 175, width: (self.view.frame.size.width - 100), height: 50))
        
        titleLabel.text = "go"
        
        titleLabel.textColor = UIColor.blueColor()
        
        
                var somePoint = CGPoint(x: 10, y: 10)
        
                var someSize = CGSize(width: 50, height: 50)
        
       
        self.view.addSubview(userNameField)
        self.view.addSubview(passwordField)
        self.view.addSubview(titleLabel)
        
        
        

        
        // did tap button
        
        
        
        
        

        
        
        
        
        
        
        
    
        

        
        
        
        
        
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

