//
//  RegisterViewController.swift
//  ColonialStockTransfer
//
//  Created by don't touch me on 10/13/16.
//  Copyright © 2016 trvl, LLC. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var signUpEmailTextField: UITextField!
    @IBOutlet weak var signUpPassTextField: UITextField!
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        var nav = self.navigationController?.navigationItem
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 128, height: 42))
        imageView.contentMode = .scaleAspectFit
        
        let image = UIImage(named: "colonialnewlogo16")
        imageView.image = image
        
        navigationItem.titleView = imageView
    }

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
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
                
                self.createUser(email: email, password: password)
            }
        }
    }
    
    func createUser(email: String, password: String) {
        
        FIRAuth.auth()?.createUser(withEmail: email, password: password) {
            
            (user, error) in
            
            if error != nil {
                print(error?.localizedDescription)
            }
            
            if let user = user {
                print(user.uid)
                print("created success")
            }
        }
    }
    
    
}
