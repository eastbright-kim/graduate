//
//  WritingViewController.swift
//  graduate
//
//  Created by 김동환 on 2021/02/05.
//

import Foundation
import UIKit

class WritingViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Poetree"
        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.font : UIFont(name: "Satisfy-Regular", size: 20)!]
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    @IBAction func wrtingButtonPressed(_ sender: UIButton) {
        dismiss(animated: true , completion: nil)
    }
    
    @IBAction func backButtonPressed(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
        
    }
    
    
}
