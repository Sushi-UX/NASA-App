//
//  MarsPhoto.swift
//  NASA-App
//
//  Created by Raymond Choy on 1/7/20.
//  Copyright © 2020 thechoygroup. All rights reserved.
//

import Foundation
import UIKit

enum ImageState {
    case placeHolder
    case downloaded
    case failed
}

class MarsPhoto: Decodable {
    let imageURL: URL
    
    enum CodingKeys: String, CodingKey {
        case imgSrc = "img_src"
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.imageURL = try container.decode(URL.self, forKey: .imgSrc)
    }
}
