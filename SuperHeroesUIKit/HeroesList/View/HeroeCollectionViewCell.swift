//
//  HeroeCollectionViewCell.swift
//  SuperHeroesUIKit
//
//  Created by andres jaramillo on 18/08/21.
//

import UIKit

class HeroeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var publisherLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
   
    func configureWith(hero: Hero) {
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
        
        nameLabel.text = hero.name
        publisherLabel.text = hero.biography?.publisher ?? ""
        imageView.downloadImage(url: URL(string: hero.images?.md ?? "")!)
    }
}


