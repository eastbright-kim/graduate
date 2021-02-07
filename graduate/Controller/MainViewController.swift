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
      
    }
    
    

}
