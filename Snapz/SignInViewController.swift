//
//  SignInViewController.swift
//  Snapz
//
//  Created by Nathan Glynn on 2/8/19.
//  Copyright © 2019 Nathan Glynn. All rights reserved.
//

import UIKit
import Firebase

class SignInViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func ohSnapTapped(_ sender: Any) {
        // Firebase funvtion for authenticating via user & password
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            print("we tried to sign in")
            if error != nil {
                print("we have a problem:\(String(describing: error))")
                Auth.auth().createUser(withEmail: self.emailTextField.text!, password: self.passwordTextField.text!, completion: { (user, error) in
                    print("we tried to make a user")
                    if error != nil{
                        print("it didn't work, we couldn't make a user:\(String(describing: error))")}
                    else {
                        print("ya did it, we made a new user")
                        self.performSegue(withIdentifier: "signInSegue", sender: nil)
                    }
                    
                })
            } else {
                print("you got signed in")
                self.performSegue(withIdentifier: "signInSegue", sender: nil)
            }
        }
    }
    
}

