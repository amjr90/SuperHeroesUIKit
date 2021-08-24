//
//  HeroApiServiceProtocol.swift
//  SuperHeroesUIKit
//
//  Created by andres jaramillo on 18/08/21.
//

import Foundation

protocol HeroApiServiceProtocol {
    func fetchHeroes(completion: @escaping([Hero])->Void)
}
