//
//  ViewController.swift
//  Hello
//
//  Created by Sam Bowen on 5/24/15.
//  Copyright (c) 2015 CodeSling. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameLabel: [UILabel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func takesUserName() {
        inputView?.textInputMode.
      
    }
}

