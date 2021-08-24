//
//  HeroRepositoryProtocol.swift
//  SuperHeroesUIKit
//
//  Created by andres jaramillo on 18/08/21.
//

import Foundation

protocol HeroRepositoryProtocol {
    func getAllHeroes(completion: @escaping([Hero])->Void)
}
