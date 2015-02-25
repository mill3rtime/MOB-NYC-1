//
//  FifthViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//TODO Five: Strings can be entered into this text box in a space-delimited fashion. They represent an array of strings. E.g. the entry "a b c" corresponds to array ["a", "b", "c"]. Save the array of strings that corresponds to the text in this text box to a file.

import UIKit

class FifthViewController: UIViewController, UITextViewDelegate {
    
    var textInView: String?
    var array1 = [String]()
    let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as NSString
    var fullDocumentsPath: String?
    var textValue = ""
    
    @IBOutlet weak var textView: UITextView!
    
    

    @IBAction func buttonPress(sender: AnyObject) {
        
        persistText()
        createPath()
        writeText()
        
        
        
        
        //         textInView = textView.text
//        
//        if let textToSplitUp = textInView {
//            array1 = textToSplitUp.componentsSeparatedByString(" ")
//            
//            println(array1)
//            
//        }
  
    }



    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        //
//        self.textView.delegate = self
        
   
        
       
        
//        func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
//            
//            if textView.text == " " {
//                
////                resignFirstResponder()
//                
//                println("ssdfds")
//            }
//            
//             println("differnt")
//            return false
//
//        }
//        

        
        
        
        
        // Do any additional setup after loading the view.
    }

    
    func persistText() {
        textValue = textView.text
        
    }
    
    
    func createPath() {
        fullDocumentsPath = documentsPath.stringByAppendingPathComponent("newFile2")
    }
    
    func writeText() {
        
        if let pathToWriteTo = fullDocumentsPath {
            
            textValue.writeToFile(pathToWriteTo, atomically: true, encoding: NSUTF8StringEncoding, error: nil)
        }
    }
    

    

    
}
