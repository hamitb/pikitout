//
//  RoundUserImage.swift
//  SocialApp
//
//  Created by Hamit Burak Emre on 01/03/17.
//  Copyright © 2017 Hamit Burak Emre. All rights reserved.
//

import UIKit

class RoundUserImage: UIImageView {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.cornerRadius = 15.0
        self.clipsToBounds = true
        
        
        let yellowColor = UIColor(red: 241.0/255.0, green: 196.0/255.0, blue: 15.0/255.0, alpha: 1 )
        
        layer.borderColor = yellowColor.cgColor
        layer.borderWidth = 1
        
        
    }

}
