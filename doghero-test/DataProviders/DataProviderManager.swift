//
//  DataProviderManager.swift
//  doghero-test
//
//  Created by Robson Moreira on 23/06/19.
//  Copyright © 2019 doghero. All rights reserved.
//

import Foundation

class DataProviderManager<T, S> {
    var delegate: T?
    var viewModel: S?
}
