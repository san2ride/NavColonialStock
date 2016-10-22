//
//  LoginViewController.swift
//  ColonialStockTransfer
//
//  Created by don't touch me on 10/13/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passTextField: UITextField!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
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
                
                self.signInUser(email: email, password: password)
            }
        }
    }

    @IBAction func signOutButtonPressed(_ sender: UIButton) {
        
        self.signOutUser()
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
    
    func signOutUser() {
        try! FIRAuth.auth()!.signOut()
        
            print("signed out!")
    }
    
    func signInUser(email: String, password: String) {
    
        FIRAuth.auth()?.signIn(withEmail: email, password: password) {
    
            (user, error) in
    
            if error != nil {
                print(error?.localizedDescription)
    
                self.deniedAlert()
            }
    
            if let user = user {
                print("\(user.email) sighned in!")
            }
    
            self.performSegue(withIdentifier: "LoginSegue", sender: nil)
        }
    
    }

}
