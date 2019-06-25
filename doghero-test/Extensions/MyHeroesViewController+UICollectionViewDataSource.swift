//
//  MyHeroesViewController.swift
//  doghero-test
//
//  Created by Robson Moreira on 23/06/19.
//  Copyright © 2019 doghero. All rights reserved.
//

import UIKit

extension MyHeroesViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        switch section {
        case 0:
            guard let vm = self.viewModel else { return 0 }
            return vm.countOfRecents ?? 0
        case 1:
            guard let vm = self.viewModel else { return 0 }
            return vm.countOfFavorites ?? 0
        default:
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        guard let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: myHeroesHeader, for: indexPath) as? MyHeroesHeaderCollectionReusableView else { return UICollectionReusableView() }
        
        headerView.labelHeroesHeader.text = (indexPath.section == 0) ? "Heróis com quem hospedei" : "Heróis favoritos"
        return headerView
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch indexPath.section {
        case 0:
            
            guard
                let recentCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: recentHero, for: indexPath) as? RecentHeroCollectionViewCell,
                let vm = self.viewModel
                else { return UICollectionViewCell() }
            
            recentCollectionViewCell.setupHeroViewModel(viewModel: vm.setupHeroViewModel(section: indexPath.section, row: indexPath.row))
            return recentCollectionViewCell
            
        case 1:
            
            guard
                let favoriteCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: favoriteHero, for: indexPath) as? FavoriteHeroCollectionViewCell,
                let vm = self.viewModel
                else { return UICollectionViewCell() }
            
            favoriteCollectionViewCell.setupHeroViewModel(viewModel: vm.setupHeroViewModel(section: indexPath.section, row: indexPath.row))
            return favoriteCollectionViewCell
            
        default:
            return UICollectionViewCell()
        }
        
    }
    
}
