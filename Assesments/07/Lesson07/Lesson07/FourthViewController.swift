//
//  FourthViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
// TODO four: Read the file saved in the previous TODO, and make this text box print out the text of that file.

import UIKit

class FourthViewController: UIViewController {
    
    var sentFilePath: String?
    var readText = ""

    @IBOutlet weak var textView4: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        readAtFilePath()
        SetText(readText)
        

        // Do any additional setup after loading the view.
}



func readAtFilePath() {
    
    if let filePath = sentFilePath {
        
        readText = String(contentsOfFile: filePath, encoding: NSUTF8StringEncoding, error: nil) ?? ""
    }
}
    
    func SetText(text: String) {
    
    textView4.text = text
    
    }
    
}


