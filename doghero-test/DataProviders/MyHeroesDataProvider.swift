//
//  HeroesDataProvider.swift
//  doghero-test
//
//  Created by Robson Moreira on 23/06/19.
//  Copyright © 2019 doghero. All rights reserved.
//

import UIKit
import DictionaryCoding

class MyHeroesDataProvider: DataProviderManager <MyHeroesDataProviderProtocol, MyHeroesViewModel> {
    
    func getMyHeroes() {
        
        let decoder = DictionaryDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        do {
            let heroes: Heroes = try decoder.decode(Heroes.self, from: MyHeroes.apiAnswer)
            self.viewModel = MyHeroesViewModel(heroes: heroes)
            if let vm = self.viewModel {
                self.delegate?.success(viewModel: vm)
            }
        } catch {
            self.delegate?.errorData(self.delegate, error: error as NSError)
        }
        
    }
    
}
