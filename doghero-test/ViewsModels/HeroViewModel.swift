//
//  HeroViewModel.swift
//  doghero-test
//
//  Created by Robson Moreira on 23/06/19.
//  Copyright © 2019 doghero. All rights reserved.
//

import UIKit

class HeroViewModel {
    
    private var hero: Hero?
    
    init(hero: Hero?) {
        self.hero = hero
    }
    
    var isSuperhero: Bool? {
        return self.hero?.isSuperhero
    }
    
    var firstName: String? {
        return self.hero?.user.firstName
    }
    
    var imageUrl: String? {
        return self.hero?.user.imageUrl
    }
    
    var addressNeighborhood: String? {
        return self.hero?.addressNeighborhood
    }
    
    var price: Int? {
        return self.hero?.price
    }
    
}
