//
//  EPIC.swift
//  NASA-App
//
//  Created by Raymond Choy on 1/7/20.
//  Copyright © 2020 thechoygroup. All rights reserved.
//

import Foundation

struct EPIC {
    let date: String
    let image: String

    enum CodingKeys: String, CodingKey {
        case date
        case image
    }
}

extension EPIC: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.date = try container.decode(String.self, forKey: .date)
        self.image = try container.decode(String.self, forKey: .image)
    }
}
