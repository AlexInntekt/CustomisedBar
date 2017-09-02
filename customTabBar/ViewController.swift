//
//  ViewController.swift
//  customTabBar
//
//  Created by Manolescu Mihai Alexandru on 02/09/2017.
//  Copyright © 2017 Manolescu Mihai Alexandru. All rights reserved.
//

import UIKit
import Foundation
import QuartzCore

class ViewController: UIViewController {

    @IBOutlet weak var tabBar: UIView!
    @IBOutlet weak var roundButton: UIButton!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //roundButton.imageView?.image = maskRoundedImage(image: #imageLiteral(resourceName: "High-Definition-Desktop-Wallpapers-Download-19"), radius: 100)
        
        
        roundButton.layer.borderWidth = 1
        roundButton.layer.masksToBounds = false
        roundButton.layer.borderColor = UIColor.black.cgColor
        roundButton.layer.cornerRadius = (roundButton.bounds.size.height) / 2.37
        roundButton.clipsToBounds = true
        
        
        
        
        
        
    }
    
    
    func maskRoundedImage(image: UIImage, radius: CGFloat) -> UIImage
    {
        let imageView: UIImageView = UIImageView(image: image)
        var layer: CALayer = CALayer()
        layer = imageView.layer
        layer.masksToBounds = true
        layer.cornerRadius = radius
        UIGraphicsBeginImageContext(imageView.bounds.size)
        layer.render(in: UIGraphicsGetCurrentContext()!)
        let roundedImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return roundedImage!
    }
    

    //this function hides the status bar upwards:
    override var prefersStatusBarHidden: Bool
    {
        return true
    }
    
    @IBAction func roundButton(_ sender: Any)
    {
        
    }
    


}

