//
//  GradientView.swift
//  SocialApp
//
//  Created by Hamit Burak Emre on 01/03/17.
//  Copyright © 2017 Hamit Burak Emre. All rights reserved.
//

import UIKit

class GradientView: UIView {
    
    override open class var layerClass: AnyClass {
        get{
            return CAGradientLayer.classForCoder()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let gradientLayer = self.layer as! CAGradientLayer
        let yellowColor = UIColor(red: 241.0/255.0, green: 196.0/255.0, blue: 15.0/255.0, alpha: 1 )
        let orangeColor = UIColor(red: 253.0/255.0, green: 119.0/255.0, blue: 59.0/255.0, alpha: 1 )
        gradientLayer.colors = [yellowColor.cgColor,orangeColor.cgColor, yellowColor.cgColor, orangeColor.cgColor,yellowColor.cgColor]
        
        gradientLayer.startPoint = CGPoint(x: 0,y: 0)
        gradientLayer.endPoint = CGPoint(x: 1,y: 0)
        
    }

}
