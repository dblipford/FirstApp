//
//  ViewController.swift
//  FirstApp
//
//  Created by Derion B. Lipford on 4/5/16.
//  Copyright © 2016 Derion B. Lipford. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    let messageArray = ["May the force be with you.", "Live long and prosper.", "To infinity and beyond.", "Space is big. You just won't believe how vastly, hugely, mindbogglibgly big it is.", 10]
    
    var index = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func doButtonTap(sender: AnyObject) {
        print("Button touched! Roll Tide!")
        
        if let nextString = self.messageArray[index] as? String {
            self.messageLabel.text = nextString

        }
        
        index++
        index %= self.messageArray.count
    }
}

