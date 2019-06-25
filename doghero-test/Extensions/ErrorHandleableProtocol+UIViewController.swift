//
//  ErrorHandleableProtocol.swift
//  doghero-test
//
//  Created by Robson Moreira on 23/06/19.
//  Copyright © 2019 doghero. All rights reserved.
//

import Foundation
import UIKit

extension ErrorHandleableProtocol where Self: UIViewController {
    
    func showError(title: String = "Alerta!", message:String = "Erro no sistema", description: String = "Erro Genérico", error: Error? = nil) {
        ErrorAlert.shared.showErrorAlert(title, message: message, onController: self)
    }
    
}
