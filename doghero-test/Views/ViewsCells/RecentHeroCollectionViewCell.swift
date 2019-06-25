//
//  RecentsCollectionViewCell.swift
//  doghero-test
//
//  Created by Robson Moreira on 23/06/19.
//  Copyright © 2019 doghero. All rights reserved.
//

import UIKit

class RecentHeroCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewHostProfile: UIImageView!
    @IBOutlet weak var imageViewSuperHero: UIImageView!
    @IBOutlet weak var labelHostName: UILabel!
    @IBOutlet weak var labelHostNeighborhood: UILabel!
    @IBOutlet weak var labelHostPrice: UILabel!
    
    fileprivate var hostName: String?
    
    func setupHeroViewModel(viewModel: HeroViewModel?) {
        guard
            let vm = viewModel,
            let urlString = vm.imageUrl,
            let url = URL(string: urlString),
            let isSuperhero = vm.isSuperhero
            else { return }
        
        self.imageViewHostProfile.setImageFrom(url: url)
        self.imageViewSuperHero.isHidden = !isSuperhero
        self.labelHostName.text = vm.firstName
        self.labelHostNeighborhood.text = vm.addressNeighborhood
        self.labelHostPrice.text = String(vm.price ?? 0)
        
        self.hostName = vm.firstName
    }
    
    fileprivate func showAlert(_ message: String) {
        let alert = UIAlertController(title: "Alert", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.window?.rootViewController?.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func actionButtonTalk(_ sender: UIButton) {
        guard let hostName = self.hostName else {
            self.showAlert("Conversar com Anfitrião")
            return
        }
        self.showAlert("Conversar com Anfitrião \(String(describing: hostName))")
    }
    
    @IBAction func actionButtonBookAgain(_ sender: UIButton) {
        guard let hostName = self.hostName else {
            self.showAlert("Fazer nova reserca com Anfitrião")
            return
        }
        self.showAlert("Fazer nova reserca com o Anfitrião \(String(describing: hostName))")
    }
    
}
