//
//  ViewController.swift
//  email validation
//
//  Created by Infosif Solutions on 12/7/18.
//  Copyright © 2018 Omninos  iOS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emaillabel: UITextField!
    @IBOutlet weak var passwordlabel: UITextField!
    @IBOutlet weak var resultlabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultlabel.isHidden = true
        passwordlabel.isSecureTextEntry = true
    }
    //mark:- loginaction
    @IBAction func loginaction(_ sender: Any) {
        
        let validemail = isValidEmail(emailID: emaillabel.text!)
        if emaillabel.text == "" {
            resultlabel.text = "please enter  your email"
            resultlabel.isHidden = false
        }else if (!validemail){
                resultlabel.text = "please enter your valid email"
        }else if passwordlabel.text == ""{
           resultlabel.text = "please enter your password"
        }else{
                resultlabel.isHidden = true
        }
        }
    func isValidEmail(emailID:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: emailID)
    }
}





