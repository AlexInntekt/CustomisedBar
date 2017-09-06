//
//  GlobalController.swift
//  customTabBar
//
//  Created by Manolescu Mihai Alexandru on 04/09/2017.
//  Copyright © 2017 Manolescu Mihai Alexandru. All rights reserved.
//

import Foundation
import UIKit

//this array contains the identifiers of the viewControllers:
var viewControllers: [String]!

//the index of the tapped button:
var selectedIndex: Int = 0

//the index of the image selected from the gallery:
var currentBackground : Int = 0

//for background:
var imagesGallery = [#imageLiteral(resourceName: "1007_staya_svet_bloki_1280x1024_(www.GetBg.net)"),#imageLiteral(resourceName: "best-hd-desktop-wallpapers-backgrounds"),#imageLiteral(resourceName: "High-Definition-Desktop-Wallpapers-Download-19"), #imageLiteral(resourceName: "Latest Awesome HD Technology Wallpapers For Technology Lovers 8")]


//this function rounds a button. The result will depend on the device' size.
//unfortunatelly it can not be associated with autolayout in normal conditions. I will find a solution soon
func round(button named: UIButton, with borderWidth: Int, radius Parameter: CGFloat = 2.37)
{
    named.layer.borderWidth = CGFloat(borderWidth)
    named.layer.masksToBounds = false
    named.layer.borderColor = UIColor.black.cgColor
    named.layer.cornerRadius = (named.bounds.size.height) / Parameter
    named.clipsToBounds = true
}

