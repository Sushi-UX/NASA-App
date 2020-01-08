//
//  APOD.swift
//  NASA-App
//
//  Created by Raymond Choy on 1/7/20.
//  Copyright © 2020 thechoygroup. All rights reserved.
//

import Foundation

struct APOD {
    let date: Date
    let explanation: String
    let hdurl: URL?
    let mediaType: String
    let title: String
    let url: URL
    let copyright: String?
    
    enum CodingKeys: String, CodingKey {
        case date
        case explanation
        case hdurl
        case mediaType
        case title
        case url
        case copyright
    }
}

extension APOD: Decodable {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.date = try container.decode(Date.self, forKey: .date)
        self.explanation = try container.decode(String.self, forKey: .explanation)
        self.hdurl = try container.decodeIfPresent(URL.self, forKey: .hdurl)
        self.mediaType = try container.decode(String.self, forKey: .mediaType)
        self.title = try container.decode(String.self, forKey: .title)
        self.url = try container.decode(URL.self, forKey: .url)
        self.copyright = try container.decodeIfPresent(String.self, forKey: .copyright)
    }
}
