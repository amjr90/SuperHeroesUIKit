//
//  UIImageExtension.swift
//  SuperHeroesUIKit
//
//  Created by andres jaramillo on 18/08/21.
//

import UIKit
import Kingfisher

extension UIImageView{
    func downloadImage(url: URL){
        self.kf.indicatorType = .activity
        KF.url(url)
          .placeholder(UIImage(named: "placeholder"))
          .loadDiskFileSynchronously()
          .cacheMemoryOnly()
          .fade(duration: 0.25)
          .set(to: self)
    }
}
