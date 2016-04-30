//
//  ViewController.swift
//  DogCommunity
//
//  Created by Alumno on 26/04/16.
//  Copyright © 2016 TEAM PUE. All rights reserved.
//

import Parse

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var UsernameField: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
    
        super.viewDidLoad()
    }

    
    override func didReceiveMemoryWarning() {
    
        super.didReceiveMemoryWarning()
    }


    @IBAction func tryLogIn(sender: AnyObject) {
        
        PFUser.logInWithUsernameInBackground(self.UsernameField.text!, password: self.passwordField.text!) {
            
            (user: PFUser?, error: NSError?) -> Void in
            
            if user != nil {
            
                self.performSegueWithIdentifier("loginUser", sender: self)
            } else {
                print(error)
                print("Wrong username or password");
            }
        }
    }
    /*
    name
    last_name
    username
    password
    email
    
    profile_picture
    */
}

