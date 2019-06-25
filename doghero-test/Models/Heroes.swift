//
//  Heroes.swift
//  doghero-test
//
//  Created by Robson Moreira on 23/06/19.
//  Copyright © 2019 doghero. All rights reserved.
//

import Foundation

struct Heroes: Codable {
    var recents: [Hero]
    var favorites: [Hero]
}
