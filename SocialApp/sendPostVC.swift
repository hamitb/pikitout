//
//  sendPostViewController.swift
//  SocialApp
//
//  Created by Hamit Burak Emre on 12/03/17.
//  Copyright © 2017 Hamit Burak Emre. All rights reserved.
//

import UIKit

class sendPostVC: UIViewController {
    
    var image: UIImage!
    @IBOutlet weak var postImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        postImage.image = image
        
    }


}
