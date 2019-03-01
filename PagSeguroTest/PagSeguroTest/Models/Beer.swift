//
//  Beer.swift
//  PagSeguroTest
//
//  Created by camila oliveira on 01/03/19.
//  Copyright © 2019 Aliamcami. All rights reserved.
//

import UIKit

class Beer: Codable {
    var image_url: URL
    var name: String
    var abv: Double
    var tagline: String
    var ibu: Double?
    var description: String
    var imageData: Data?
}

