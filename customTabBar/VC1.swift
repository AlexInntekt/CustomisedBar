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
    //UIImageView:
    @IBOutlet weak var background: UIImageView!

    //blur the image in the back of the label:
    @IBOutlet weak var blurEffect: UIVisualEffectView!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        //round the blurEffect:
        blurEffect.layer.masksToBounds = false
        blurEffect.layer.cornerRadius = (blurEffect.bounds.size.height) / 2
        blurEffect.clipsToBounds = true
    }

    //each time a viewController is contained in the main one..:
    override func viewDidAppear(_ animated: Bool)
    {
        background.image = imagesGallery[currentBackground]
    }

}
