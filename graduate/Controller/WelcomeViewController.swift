//
//  WelcomeViewController.swift
//  graduate
//
//  Created by 김동환 on 2021/01/20.
//

import UIKit
import GoogleSignIn
import Firebase

class WelcomeViewController: UIViewController, GIDSignInDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance()?.presentingViewController = self
        GIDSignIn.sharedInstance().delegate = self
        
    }
    
    
    
    @IBAction func signInButton() {
        
        
    }
    
    func sign(_ signIn: GIDSignIn!, didSignInFor user: GIDGoogleUser!, withError error: Error!) {
        if let error = error {
            print(error.localizedDescription)
        }
        
        guard let authentication = user.authentication else {return}
        let credential = GoogleAuthProvider.credential(withIDToken: authentication.idToken, accessToken: authentication.accessToken)
        
        Auth.auth().signIn(with: credential) { (authResult, error) in
            if error != nil {
                return
            } else {
                self.performSegue(withIdentifier: "userLogedIn", sender: self)
            }
        }
        
    }
}


