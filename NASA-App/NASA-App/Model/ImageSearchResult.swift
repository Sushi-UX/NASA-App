//
//  ImageSearchResult.swift
//  NASA-App
//
//  Created by Raymond Choy on 1/7/20.
//  Copyright © 2020 thechoygroup. All rights reserved.
//

import Foundation
import UIKit

struct ImageSearchResult: Decodable{
    let collection: Collection
}

struct Collection: Decodable{
    let items: [Item]
}

struct Item: Decodable{
    let data: [Data]
    let links:[Link]
}

struct Data: Decodable{
    let title:String
    let description:String
}

struct Link: Decodable {
    let href:URL
}
