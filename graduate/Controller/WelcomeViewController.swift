//
//  WelcomeViewController.swift
//  graduate
//
//  Created by 김동환 on 2021/01/20.
//

import UIKit
import GoogleSignIn

class WelcomeViewController: UIViewController {
    
    @IBOutlet var signInButton: GIDSignInButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        GIDSignIn.sharedInstance()?.presentingViewController = self
    }
    
}
