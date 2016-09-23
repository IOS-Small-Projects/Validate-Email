//
//  ViewController.swift
//  Validate-Email
//
//  Created by Rohit on 23/09/16.
//  Copyright © 2016 Introp. All rights reserved.
//

import UIKit

extension String
{
    func isEmail() -> Bool
    {
        let emailRegex = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,6}"
        return NSPredicate(format: "SELF MATCHES %@", emailRegex).evaluateWithObject(self)
    }
}

class ViewController: UIViewController {

    @IBOutlet var email: UITextField!
    @IBOutlet var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func isValidate(sender: AnyObject) {
        if  email.text!.isEmail() == true{
            label.text = email.text! + " is email"
        }else{
            label.text = email.text! + " is not email"
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

