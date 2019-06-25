//
//  HeroesViewModel.swift
//  doghero-test
//
//  Created by Robson Moreira on 23/06/19.
//  Copyright © 2019 doghero. All rights reserved.
//

import Foundation

class MyHeroesViewModel {
    
    private var heroes: Heroes?
    
    init(heroes: Heroes) {
        self.heroes = heroes
    }
    
    var countOfRecents: Int? {
        return self.heroes?.recents.count
    }
    
    var countOfFavorites: Int? {
        return self.heroes?.favorites.count
    }
    
    func setupHeroViewModel(section: Int, row: Int) -> HeroViewModel? {
        guard let heroes = self.heroes else {
            return nil
        }
        
        if section == 0 {
            return HeroViewModel(hero: heroes.recents[row])
        } else {
            return HeroViewModel(hero: heroes.favorites[row])
        }
    }
    
}
