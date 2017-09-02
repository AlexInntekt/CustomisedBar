//
//  ViewController.swift
//  customTabBar
//
//  Created by Manolescu Mihai Alexandru on 02/09/2017.
//  Copyright © 2017 Manolescu Mihai Alexandru. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tabBar: UIView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        
        //self.tabBar.isTranslucent = true
        //self.tabBar.alpha = 0.3
        //self.tabBar.backgroundColor = UIColor.clear.withAlphaComponent(0.8)
        //self.tabBar.layer.backgroundColor = UIColor.clear.withAlphaComponent(0.7).cgColor
        
    }

    //this function hides the status bar upwards:
    override var prefersStatusBarHidden: Bool
    {
        return true
    }


}

