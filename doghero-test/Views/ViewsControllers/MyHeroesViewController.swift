//
//  ViewController.swift
//  doghero-test
//
//  Created by Gustavo Romito Nogueira on 1/27/18.
//  Copyright © 2018 doghero. All rights reserved.
//

import UIKit

class MyHeroesViewController: BaseViewController {
    
    @IBOutlet weak var collectionViewMyHeroes: UICollectionView!
    
    let myHeroesHeader: String = "MyHeroesHeaderCollectionReusableView"
    let recentHero: String = "RecentHeroCollectionViewCell"
    let favoriteHero: String = "FavoriteHeroCollectionViewCell"
    
    var dataProvider: MyHeroesDataProvider?
    var viewModel: MyHeroesViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.topItem?.title = "Meus Heróis"
        
        self.collectionViewMyHeroes.register(UINib(nibName: recentHero, bundle: nil), forCellWithReuseIdentifier: recentHero)
        self.collectionViewMyHeroes.register(UINib(nibName: favoriteHero, bundle: nil), forCellWithReuseIdentifier: favoriteHero)
        
        self.dataProvider = MyHeroesDataProvider()
        self.dataProvider?.delegate = self
        
        self.collectionViewMyHeroes.dataSource = self
        self.collectionViewMyHeroes.delegate = self
        
        self.dataProvider?.getMyHeroes()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
