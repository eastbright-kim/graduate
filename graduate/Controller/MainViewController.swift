//
//  MainViewController.swift
//  graduate
//
//  Created by 김동환 on 2021/01/20.
//

import UIKit

class MainViewController: UIViewController {
    
    let images = [UIImage(named: "fox"), UIImage(named: "load")]
    
    @IBOutlet weak var collectionView: UICollectionView!

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
}
