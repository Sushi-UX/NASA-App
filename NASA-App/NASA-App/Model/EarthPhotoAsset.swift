//
//  EarthPhotoAsset.swift
//  NASA-App
//
//  Created by Raymond Choy on 1/7/20.
//  Copyright © 2020 thechoygroup. All rights reserved.
//

import Foundation
import UIKit

//Parse API object tutorial: https://www.youtube.com/watch?v=YY3bTxgxWss

struct EarthPhotoAsset: Decodable{
    let count: Int
    let results: [Result]
}

struct Result: Decodable{
    let date: String
}
