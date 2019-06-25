//
//  GenericDataProviderProtocol.swift
//  doghero-test
//
//  Created by Robson Moreira on 23/06/19.
//  Copyright © 2019 doghero. All rights reserved.
//

import Foundation

protocol GenericDataProviderProtocol: class {
    
    func success(viewModel: Any)
    func errorData(_ provider: GenericDataProviderProtocol?, error: NSError)
    
}
