//
//  VC1.swift
//  customTabBar
//
//  Created by Manolescu Mihai Alexandru on 04/09/2017.
//  Copyright © 2017 Manolescu Mihai Alexandru. All rights reserved.
//

import UIKit
import Foundation

class VC1: UIViewController
{
    @IBOutlet weak var background: UIImageView!

    @IBOutlet weak var blurEffect: UIVisualEffectView!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()


        blurEffect.layer.masksToBounds = false
        blurEffect.layer.cornerRadius = (blurEffect.bounds.size.height) / 2
        blurEffect.clipsToBounds = true
    }

    override func viewDidAppear(_ animated: Bool)
    {
        background.image = imagesGallery[currentBackground]
    }

}
