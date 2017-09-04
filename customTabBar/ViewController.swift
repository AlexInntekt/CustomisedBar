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
    
    @IBOutlet weak var contentView: UIView!
    

    

    @IBOutlet weak var background: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        //let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        
        
        viewControllers = ["ViewControllerOne", "homeViewController", "ViewControllerTwo"]
        
        
  
       
        
        round(button: buttons[0], with: 5)
        
        round(button: buttons[2], with: 2)
        
        round(button: buttons[1], with: 1, radius: 4)
        
        
        buttons[selectedIndex].isSelected = true
 
        didPressTab(buttons[2])
        
    }
    
    

    //this function hides the status bar upwards:
    override var prefersStatusBarHidden: Bool
    {
        return true
    }
    

    @IBAction func didPressTab(_ sender: UIButton)
    {
        print("\n #User tapped the bottom bar.")
        
        //remove previous subview:
        for subview in contentView.subviews
        {
            print("for removing...")
            subview.removeFromSuperview()
        }
        
        if(sender.tag == 1)  //if the center button is tapped:
        {
            if currentBackground == imagesGallery.count-1
            {
                currentBackground = 0
            }
            else
            {
                currentBackground += 1
            }
            
            background.image = imagesGallery[currentBackground]
        }
        else
        {
            let vc = storyboard?.instantiateViewController(withIdentifier: viewControllers[sender.tag])
            
            self.addChildViewController(vc!)
            self.contentView.addSubview((vc?.view)!)
            vc?.view.frame = contentView.bounds
        }

        

        
    
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
    
    
    func roundForAutoLayout(button named: UIButton, with borderWidth: Int, radius Parameter: CGFloat = 2.37)
    {
        named.layer.borderWidth = CGFloat(borderWidth)
        named.layer.masksToBounds = false
        named.layer.borderColor = UIColor.black.cgColor
        named.layer.cornerRadius = 47
        named.clipsToBounds = true
    }
    

}

