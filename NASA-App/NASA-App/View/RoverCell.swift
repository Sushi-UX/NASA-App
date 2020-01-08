//
//  RoverCell.swift
//  NASA-App
//
//  Created by Raymond Choy on 1/7/20.
//  Copyright © 2020 thechoygroup. All rights reserved.
//

import UIKit

class RoverCell: UICollectionViewCell {
    
    let client = ApiClient()
    
    @IBOutlet weak var roverImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.contentView.layer.cornerRadius = 25.0
        self.contentView.layer.masksToBounds = true
    }
    
    
}
