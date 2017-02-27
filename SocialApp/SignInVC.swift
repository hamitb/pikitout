//
//  ViewController.swift
//  SocialApp
//
//  Created by Hamit Burak Emre on 27/02/17.
//  Copyright © 2017 Hamit Burak Emre. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import Firebase
import FirebaseAuth

class SignInVC: UIViewController {
    
    
    @IBOutlet weak var emailField: FancyField!
    @IBOutlet weak var passwordField: FancyField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func facebookBtnTapped(_ sender: Any) {
        let facebookLogin = FBSDKLoginManager()
        
        facebookLogin.logIn(withReadPermissions: ["email"], from: self) { (result, error) in
            
            if error != nil {
                print("HMTBRK: Unable to authenticate with Facebook - \(error)")
            } else if result?.isCancelled == true {
                print("HMTBRK: User cancelled Facebook auth.")
            } else {
                print("HMTBRK: Successfully authenticacted with Facebook")
                let credential = FIRFacebookAuthProvider.credential(withAccessToken: FBSDKAccessToken.current().tokenString)
                self.firebaseAuth(credential)
            }
        }
    }
    
    func firebaseAuth(_ credential: FIRAuthCredential) {
        FIRAuth.auth()?.signIn(with: credential, completion: { (user, error) in
            if error != nil {
                print("HMTBRK: Unable to authenticate with Firebase - \(error)")
            } else {
                print("HMTBRK: Successfully authenticated with Firebase.")
            }
        })
    }
    
    
    @IBAction func signInTapped(_ sender: Any) {
        if let email = emailField.text, let password = passwordField.text {
            FIRAuth.auth()?.signIn(withEmail: email, password: password, completion: { (user, error) in
                if error == nil {
                    print("HMTBRK: Sign In with email password is successful.")
                } else {
                    FIRAuth.auth()?.createUser(withEmail: email, password: password, completion: { (user, error) in
                        if error != nil {
                            print("HMTBRK: _EMAIL_ Unable to authenticate with Firebase ")
                        } else {
                            print("HMTBRK: _EMAIL_ Successfully authenticated with Firebase")
                        }
                    })
                }
            })
        }
    }
}

