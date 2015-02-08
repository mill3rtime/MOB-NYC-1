//
//  ViewController.swift
//  smile
//
//  Created by Matt Miller on 2/4/15.
//  Copyright (c) 2015 Matt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let topMargin: CGFloat = 100
        let size: CGFloat = 15
        
        
        var leftEye = UIView(frame: CGRect(x: self.view.frame.width / 4, y: topMargin, width: size, height: size))
 
            var rightEye = UIView(frame: CGRect(x: self.view.frame.width * 0.75, y: topMargin, width: size, height: size))
        
        leftEye.backgroundColor = UIColor.purpleColor()
        rightEye.backgroundColor = UIColor.redColor()
        
       // leftEye.autoresizingMask.flexibleRight
        
        rightEye.autoresizingMask = UIViewAutoresizing.
        
        
        view.addSubview(leftEye)
        view.addSubview(rightEye)
        
        rightEye.frame.CGRect
        
    
    
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

