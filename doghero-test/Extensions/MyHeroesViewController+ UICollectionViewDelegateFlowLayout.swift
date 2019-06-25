//
//  MyHeroesViewController.swift
//  doghero-test
//
//  Created by Robson Moreira on 23/06/19.
//  Copyright © 2019 doghero. All rights reserved.
//

import UIKit

extension MyHeroesViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: view.frame.width, height: 140.0)
    }
    
}
