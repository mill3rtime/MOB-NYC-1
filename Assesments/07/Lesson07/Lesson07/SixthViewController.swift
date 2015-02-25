
//
//  SixthViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
// TODO six: Read the array saved in the previous file and print its space-delimited string representation here.

import UIKit

class SixthViewController: UIViewController {
    
    let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as NSString
    var fullDocumentsPath: String?
    var readFilePath: String?
    var readText = ""

    @IBOutlet weak var textView9: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        createPath()
        readAtFilePath()
        setText(readText)
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    func createPath() {
        fullDocumentsPath = documentsPath.stringByAppendingPathComponent("newFile2")
    }
    
    
    
    func readAtFilePath() {
        
        if let filePath = fullDocumentsPath {
            
            readText = String(contentsOfFile: filePath, encoding: NSUTF8StringEncoding, error: nil) ?? ""
            
            println("readfile")
        }
    }
    
    func setText(text: String) {
        
        textView9.text = text
        println("setText")
    }
    
}



    
    

