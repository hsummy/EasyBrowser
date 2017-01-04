//
//  ViewController.swift
//  EasyBrowser
//
//  Created by HSummy on 12/21/16.
//  Copyright © 2016 HSummy. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate
{
 
 @IBOutlet weak var webView: UIWebView!

    override func viewDidLoad()
    {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool
//    {
//        let url = URL (string: "http://developer.apple.com")
//        let requestObject = URLRequest(url: url!)
//        webView.loadRequest(requestObject)
//        return true
//    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        
        textField.resignFirstResponder()
        let website = textField.text
        
        let url = URL (string: website!)
        let requestObject = URLRequest(url: url!)
        self.webView.loadRequest(requestObject)
        
        return true
    }
    
    
//Mark = IBACTIONS
    
    
    
//    @IBAction func openPage(_ sender: Any)
//    {
//        let url = URL (string: "http://developer.apple.com")
//        let requestObject = URLRequest(url: url!)
//        webView.loadRequest(requestObject)
//
//       // UIApplication.shared.open(NSURL(string:"http://developer.apple.com") as! URL, options: [:], completionHandler: nil)
//    }
}

