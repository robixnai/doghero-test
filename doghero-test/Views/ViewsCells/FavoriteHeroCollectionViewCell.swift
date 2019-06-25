//
//  FavoriteCollectionViewCell.swift
//  doghero-test
//
//  Created by Robson Moreira on 23/06/19.
//  Copyright © 2019 doghero. All rights reserved.
//

import UIKit

class FavoriteHeroCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewHostProfile: UIImageView!
    @IBOutlet weak var imageViewSuperHero: UIImageView!
    @IBOutlet weak var labelHostName: UILabel!
    @IBOutlet weak var labelHostNeighborhood: UILabel!
    @IBOutlet weak var buttonFavorites: UIImageView!
    @IBOutlet weak var labelHostPrice: UILabel!
    
    fileprivate var hostName: String?
    fileprivate var isFavorite: Bool = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        buttonFavorites.isUserInteractionEnabled = true
        buttonFavorites.addGestureRecognizer(tapGestureRecognizer)
    }
    
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
    
    @IBAction func imageTapped(tapGestureRecognizer: UITapGestureRecognizer) {
        isFavorite = !isFavorite
        self.buttonFavorites.image = (isFavorite) ? #imageLiteral(resourceName: "icon_heart_unfilled") : #imageLiteral(resourceName: "icon_heart_filled")
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
