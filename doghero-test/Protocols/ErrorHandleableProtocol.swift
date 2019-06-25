//
//  File.swift
//  doghero-test
//
//  Created by Robson Moreira on 23/06/19.
//  Copyright © 2019 doghero. All rights reserved.
//

import Foundation

public protocol ErrorHandleableProtocol {
    
    func showError(title: String, message: String, description: String, error: Error?)
    
}
