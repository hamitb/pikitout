//
//  postCell.swift
//  SocialApp
//
//  Created by Hamit Burak Emre on 10/03/17.
//  Copyright © 2017 Hamit Burak Emre. All rights reserved.
//

import UIKit

class postCell: UITableViewCell {
    
    
    @IBOutlet weak var profileImage: RoundUserImage!
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var usernameLabel: UIButton!
    @IBOutlet weak var likesLabel: UIButton!
    @IBOutlet weak var usernameLabelBottom: UIButton!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    
    var post: Post!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func configureCell(post: Post) {
        self.post = post
        self.descriptionLabel.text = post.caption
        self.likesLabel.setTitle("\(post.likes) likes", for: .normal)
        
        
    }
}
