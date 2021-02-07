//
//  RegisterViewController.swift
//  graduate
//
//  Created by 김동환 on 2021/01/20.
//

import UIKit

class RegisterViewController: UIViewController {
    
    
    @IBAction func RegisterPressed(_ sender: UIButton) {
        performSegue(withIdentifier: K.registerToMain, sender: self)
        
    }
    
    
    
}
