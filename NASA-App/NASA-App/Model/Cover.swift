//
//  Cover.swift
//  NASA-App
//
//  Created by Raymond Choy on 1/7/20.
//  Copyright © 2020 thechoygroup. All rights reserved.
//

import Foundation
import UIKit

enum MainTitles:String{
    case apod = "NASA Astronomy Picture of the Day"
    case epic = "NASA Earth Polychromatic Imaging Camera"
    case mars = "MARS"
    case library = "LIBRARY"
}


class Cover {
    
    var coverMainTitle: MainTitles?
    var coverSubTitle: String?
    var coverImage: UIImage?
    var apod:APOD?
    var epic:EPIC?
    
    init(coverMainTitle:MainTitles?,coverSubTitle:String?,coverImage:UIImage?,apod:APOD?,epic:EPIC?){
        self.coverMainTitle=coverMainTitle
        self.coverSubTitle=coverSubTitle
        self.coverImage=coverImage
        self.apod=apod
        self.epic=epic
    }
    
}
