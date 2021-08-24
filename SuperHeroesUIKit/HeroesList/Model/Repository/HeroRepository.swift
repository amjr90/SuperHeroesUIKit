//
//  HeroesRepository.swift
//  SuperHeroesUIKit
//
//  Created by andres jaramillo on 18/08/21.
//

import Foundation

class HeroRepository: HeroRepositoryProtocol {
    
    private let apiService = HeroApiService()
    func getAllHeroes(completion: @escaping ([Hero]) -> Void) {
        apiService.fetchHeroes { heroes in
            completion(heroes)
        }
    } 
}
