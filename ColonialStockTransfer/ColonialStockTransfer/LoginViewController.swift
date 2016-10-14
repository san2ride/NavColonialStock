//
//  LoginViewController.swift
//  ColonialStockTransfer
//
//  Created by don't touch me on 10/13/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(textField.text)
        
        if textField == self.emailTextField {
            print(textField.text)
            
            textField.resignFirstResponder()
            
            self.passTextField.becomeFirstResponder()
        }
        
        return true
    }

    @IBAction func loginButtonPressed(_ sender: UIButton) {
        
        if let email = self.emailTextField.text {
            
            if let password = self.passTextField.text {
                
//                self.signInUser(email: email, password: password)
            }
        }
    }

    @IBAction func signOutButtonPressed(_ sender: UIButton) {
        
//        self.signOutUser()
    }
    
    @IBAction func signUpButtonPressed(_ sender: AnyObject) {
        
        self.performSegue(withIdentifier: "RegisterSegue", sender: nil)
        
    }
        
    func deniedAlert() {
        let alert = UIAlertController(title: "Invaled Login", message: "Call 801-355-5740", preferredStyle: .alert)
        
        let cancelAction = UIAlertAction(title: "Denied",
                                         style: .default) {
                                            (action) in
        }
        alert.addAction(cancelAction)
        self.present(alert, animated: true, completion: nil)
    }

    
}
