//
//  RegisterViewController.swift
//  ColonialStockTransfer
//
//  Created by don't touch me on 10/13/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var signUpEmailTextField: UITextField!
    @IBOutlet weak var signUpPassTextField: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        print(textField)
        
        if textField == self.signUpPassTextField {
            print(textField.text)
            
            textField.resignFirstResponder()
            
            self.signUpPassTextField.becomeFirstResponder()
            
        }
        return true
    }
    
    @IBAction func signUpButtonPressed(_ sender: UIButton) {
        
        if let email = self.signUpEmailTextField.text {
            
            if let password = self.signUpPassTextField.text {
                
//                self.createUser(email: email, password: password)
            }
        }
    }
    
    
}
