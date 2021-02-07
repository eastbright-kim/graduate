//
//  LoginViewController.swift
//  graduate
//
//  Created by 김동환 on 2021/01/20.
//

import UIKit

class LoginViewController: UIViewController {
    
    
   
    
    @IBAction func LoginPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: K.logInToMain, sender: self)
        
    }
    
    
    
    
    
}
