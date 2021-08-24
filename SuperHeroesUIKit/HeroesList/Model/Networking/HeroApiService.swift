//
//  HeroApiService.swift
//  SuperHeroesUIKit
//
//  Created by andres jaramillo on 18/08/21.
//

import Foundation

class HeroApiService: HeroApiServiceProtocol {
    func fetchHeroes(completion: @escaping ([Hero])-> Void) {
        let networking = Networking()
        let endPoint = EndPoint.allHeroes
        
        networking.get(endPoint: endPoint) { response in
            do{
                let heroes = try JSONDecoder().decode([Hero].self, from: response.data ?? Data())
                completion(heroes)
            }
            catch{
                print(error)
            }
        }
    }
}
