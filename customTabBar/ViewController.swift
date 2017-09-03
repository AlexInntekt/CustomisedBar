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

        round(button: roundButton, with: 10)
        
        
        
        
        
        
        
        
    }
    
    
    func round(button named: UIButton, with borderWidth: Int)
    {
        named.layer.borderWidth = CGFloat(borderWidth)
        named.layer.masksToBounds = false
        named.layer.borderColor = UIColor.black.cgColor
        named.layer.cornerRadius = (roundButton.bounds.size.height) / 2.37
        named.clipsToBounds = true
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

