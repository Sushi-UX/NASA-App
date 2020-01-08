//
//  Image.swift
//  NASA-App
//
//  Created by Raymond Choy on 1/7/20.
//  Copyright © 2020 thechoygroup. All rights reserved.
//

import Foundation
import UIKit

class Image{
    
    var image:UIImage?
    var imageTitle:String?
    var imageDescription:String?
    
    init(image:UIImage?,title:String?,description:String?) {
        self.image = image
        self.imageTitle = title
        self.imageDescription = description
    }
    
}
