//
//  MyHeroesViewController.swift
//  doghero-test
//
//  Created by Robson Moreira on 23/06/19.
//  Copyright © 2019 doghero. All rights reserved.
//

import Foundation

extension MyHeroesViewController: MyHeroesDataProviderProtocol {
    
    func success(viewModel: Any) {
        self.viewModel = viewModel as? MyHeroesViewModel
        self.collectionViewMyHeroes.reloadData()
    }
    
    func errorData(_ provider: GenericDataProviderProtocol?, error: NSError) {
        self.showError(title: "Erro", message: "Erro na API. Tente novamente mais tarde!", description: "", error: error)
    }
    
}
