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
    
    var viewControllers: [String]!
    
    var selectedIndex: Int = 0
    
    var imagesGallery = [#imageLiteral(resourceName: "1007_staya_svet_bloki_1280x1024_(www.GetBg.net)"),#imageLiteral(resourceName: "best-hd-desktop-wallpapers-backgrounds"),#imageLiteral(resourceName: "High-Definition-Desktop-Wallpapers-Download-19"), #imageLiteral(resourceName: "Latest Awesome HD Technology Wallpapers For Technology Lovers 8")]
    

    @IBOutlet weak var background: UIImageView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        //let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        
        
        viewControllers = ["ViewControllerOne", "homeViewController", "ViewControllerTwo"]
        
        
        //round the center button:
        round(button: buttons[1], with: 5)
        
        buttons[0].backgroundColor = UIColor.black
        round(button: buttons[0], with: 2)
        
        buttons[2].backgroundColor = UIColor.blue
        round(button: buttons[2], with: 2)
        
        buttons[selectedIndex].isSelected = true
        //didPressTab(buttons[selectedIndex])
        
        
        
        
        /*
        let vc = ViewControllerOne
    
        addChildViewController(vc!)
        
        vc?.view.frame = contentView.bounds
        contentView.addSubview((vc?.view)!)
        
        vc?.didMove(toParentViewController: self)
       */
    }
    
    

    //this function hides the status bar upwards:
    override var prefersStatusBarHidden: Bool
    {
        return true
    }
    

    @IBAction func didPressTab(_ sender: UIButton)
    {
        print("\n #User tapped the bottom bar.")
        
        if(sender.tag != 1) //meaning that the side buttons are tapped:
        {
            //remove previous subview:
            for subview in contentView.subviews
            {
                print("for removing...")
                subview.removeFromSuperview()
            }
            
            let vc = storyboard?.instantiateViewController(withIdentifier: viewControllers[sender.tag])
            
            self.addChildViewController(vc!)
            self.contentView.addSubview((vc?.view)!)
            vc?.view.frame = contentView.bounds
        }
        else  //if the center button is tapped:
        {
            //remove previous subview:
            for subview in contentView.subviews
            {
                print("for removing...")
                subview.removeFromSuperview()
            }
            
            let vc = storyboard?.instantiateViewController(withIdentifier: viewControllers[sender.tag])
            
            self.addChildViewController(vc!)
            self.contentView.addSubview((vc?.view)!)
            
            print("\n #The user tapped the center button")
            background.image = imagesGallery[0]
        }
        
        
        
        
        //let previousIndex = selectedIndex
        //selectedIndex = sender.tag
        //buttons[previousIndex].isSelected = false
        //let previousVC = viewControllers[previousIndex]
        //previousVC.willMove(toParentViewController: nil)
        //previousVC.view.removeFromSuperview()
        //previousVC.removeFromParentViewController()
        //sender.isSelected = true
        
        //let vc = viewControllers[selectedIndex]
        //addChildViewController(vc)
       // vc.view.frame = contentView.bounds
       // contentView.addSubview(vc.view)
        
        //vc.didMove(toParentViewController: self)
        
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
    
    
    func roundForAutoLayout(button named: UIButton, with borderWidth: Int, radius Parameter: CGFloat = 2.37)
    {
        named.layer.borderWidth = CGFloat(borderWidth)
        named.layer.masksToBounds = false
        named.layer.borderColor = UIColor.black.cgColor
        named.layer.cornerRadius = 47
        named.clipsToBounds = true
    }
    

}

