//
//  Hero.swift
//  SuperHeroesUIKit
//
//  Created by andres jaramillo on 18/08/21.
//

import Foundation

class Hero: Codable {
    let id: Int?
    let name, slug: String?
    let powerstats: Powerstats?
    let appearance: Appearance?
    let biography: Biography?
    let work: Work?
    let connections: Connections?
    let images: Images?
}
