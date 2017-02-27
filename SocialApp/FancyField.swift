//
//  FancyField.swift
//  SocialApp
//
//  Created by Hamit Burak Emre on 27/02/17.
//  Copyright © 2017 Hamit Burak Emre. All rights reserved.
//

import UIKit

class FancyField: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        
    layer.cornerRadius = 4.0
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 5)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.insetBy(dx: 10, dy: 5)
    }

}
