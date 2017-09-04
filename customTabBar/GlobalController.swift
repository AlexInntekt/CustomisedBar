//
//  GlobalController.swift
//  customTabBar
//
//  Created by Manolescu Mihai Alexandru on 04/09/2017.
//  Copyright © 2017 Manolescu Mihai Alexandru. All rights reserved.
//

import Foundation
import UIKit

var viewControllers: [String]!

var selectedIndex: Int = 0
var currentBackground : Int = 0

var imagesGallery = [#imageLiteral(resourceName: "1007_staya_svet_bloki_1280x1024_(www.GetBg.net)"),#imageLiteral(resourceName: "best-hd-desktop-wallpapers-backgrounds"),#imageLiteral(resourceName: "High-Definition-Desktop-Wallpapers-Download-19"), #imageLiteral(resourceName: "Latest Awesome HD Technology Wallpapers For Technology Lovers 8")]



func round(button named: UIButton, with borderWidth: Int, radius Parameter: CGFloat = 2.37)
{
    named.layer.borderWidth = CGFloat(borderWidth)
    named.layer.masksToBounds = false
    named.layer.borderColor = UIColor.black.cgColor
    named.layer.cornerRadius = (named.bounds.size.height) / Parameter
    named.clipsToBounds = true
}

