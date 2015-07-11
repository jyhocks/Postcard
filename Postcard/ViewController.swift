//
//  ViewController.swift
//  Postcard
//
//  Created by Jonathan Hocks on 6/24/15.
//  Copyright (c) 2015 Jonathan Hocks. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        sender.backgroundColor = UIColor.redColor()
        
        messageLabel.text = enterMessageTextField.text
        messageLabel.textColor = UIColor.orangeColor()
        messageLabel.hidden = false
        
        nameLabel.text = "Dear " + enterNameTextField.text + ","
        nameLabel.textColor = UIColor.blueColor()
        nameLabel.hidden = false
        
        enterMessageTextField.text = ""
                              // Make the keyboard "go away"
        enterMessageTextField.resignFirstResponder()
        
        enterNameTextField.text = ""
        
        // here i could just use "sender" instead of "mailButton" if i wanted to.
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
        // empty comment to commit
    }
    
}

