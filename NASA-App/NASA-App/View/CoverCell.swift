//
//  CoverCell.swift
//  NASA-App
//
//  Created by Raymond Choy on 1/7/20.
//  Copyright © 2020 thechoygroup. All rights reserved.
//

import UIKit

//This class represents a cell in table view
final class CoverCell: UITableViewCell {
    static let reuseIdentifier = String(describing: CoverCell.self)
    
    @IBOutlet weak var coverImage: UIImageView!
    
    @IBOutlet weak var coverMainTitle: UILabel!
    
    @IBOutlet weak var coverSubTitle: UILabel!
}

