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
    
    
    @IBOutlet var buttons: [UIButton]!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //round the center button:
        round(button: buttons[1], with: 5)
        
        buttons[0].backgroundColor = UIColor.black
        round(button: buttons[0], with: 2, radius: 3.2)
        
        buttons[2].backgroundColor = UIColor.blue
        round(button: buttons[2], with: 2, radius: 3.2)
    }
    
    
    
    
    func round(button named: UIButton, with borderWidth: Int, radius Parameter: CGFloat = 2.37)
    {
        named.layer.borderWidth = CGFloat(borderWidth)
        named.layer.masksToBounds = false
        named.layer.borderColor = UIColor.black.cgColor
        named.layer.cornerRadius = (named.bounds.size.height) / Parameter
        named.clipsToBounds = true
    }
    
    //you can try this function as well if you want:
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

