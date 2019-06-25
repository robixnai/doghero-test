//
//  ErrorAlert.swift
//  doghero-test
//
//  Created by Robson Moreira on 23/06/19.
//  Copyright © 2019 doghero. All rights reserved.
//

import Foundation
import UIKit

class ErrorAlert: NSObject {
    
    static let shared = ErrorAlert()
    
    override init() {
        super.init()
    }
    
    func showErrorAlert(_ title: String, message: String, onController: UIViewController) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Ok", style: .cancel) {
            (action) in
        }
        alertController.addAction(cancelAction)
        if onController.presentedViewController != alertController {
            onController.present(alertController, animated: true, completion: nil)
        }
    }
    
}
