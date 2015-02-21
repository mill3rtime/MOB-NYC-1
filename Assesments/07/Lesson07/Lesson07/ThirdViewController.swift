//
//  ThirdViewController.swift
//  Lesson07
//
//  Created by Rudd Taylor on 9/30/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
// TODO three: Save the text in this text box to a flat file when 'next' is pressed.

//        let cocoaArray: NSArray = textFieldArray


//        let filemgr = NSFileManager.defaultManager().createFileAtPath(documentsPath, contents: textValue, attributes: <#[NSObject : AnyObject]?#>)
        //        let textFieldArray = textValue.componentsSeparatedByString(" ")

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    let documentsPath = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)[0] as NSString
    var textValue = ""
    

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       
        persistText()
        writeText()

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func persistText() {
        textValue = textField.text
        
    }
    
    func writeText(){
        
        let fullDocumentsPath = documentsPath.stringByAppendingPathComponent("newFile")
        
        textValue.writeToFile(fullDocumentsPath, atomically: true, encoding: NSUTF8StringEncoding, error: nil)
    }

}
