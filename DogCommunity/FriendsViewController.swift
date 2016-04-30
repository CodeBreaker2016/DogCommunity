//
//  FriendsViewController.swift
//  DogCommunity
//
//  Created by Alumno on 29/04/16.
//  Copyright © 2016 TEAM PUE. All rights reserved.
//

import Parse

import UIKit

class FriendsViewController: UIViewController {

    @IBOutlet weak var userLabel: UILabel!
    
    @IBOutlet weak var userImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let current = PFUser.currentUser()
        
        if current != nil {
            
            self.userLabel.text = current!.valueForKey("name") as? String
            
        } else {
            
            self.userLabel.text = "user not recovered"
        }
        
    }

    override func didReceiveMemoryWarning() {

        super.didReceiveMemoryWarning()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
