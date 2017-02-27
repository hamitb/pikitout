//
//  RoundButton.swift
//  SocialApp
//
//  Created by Hamit Burak Emre on 27/02/17.
//  Copyright © 2017 Hamit Burak Emre. All rights reserved.
//

import UIKit

class RoundButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        /*layer.shadowColor = UIColor(red: SHADOW_GRAY, green: SHADOW_GRAY, blue: SHADOW_GRAY, alpha: 0.6).cgColor
        layer.shadowOpacity = 0.8
        layer.shadowRadius = 5.0
        layer.shadowOffset = CGSize(width: 1, height: 1)*/
        
        layer.cornerRadius = 20.0
    }

}
