//
//  HeroesPresenter.swift
//  SuperHeroesUIKit
//
//  Created by andres jaramillo on 18/08/21.
//

import UIKit

protocol HeroesPresenterDelegate {
    func presentHeroes(heroes: [Hero])
    func presentHero(hero: Hero)
}

typealias HeroesDelegate = HeroesPresenterDelegate & UIViewController

class HeroesPresenter {
    
    private weak var delegate: HeroesDelegate?
    private let repository = HeroRepository()
    
    private var heroes = [Hero]()
    
    init(delegate: HeroesDelegate) {
        self.delegate = delegate
    }
    
    func fetchHeroes() {
        repository.getAllHeroes { heroes in
            DispatchQueue.main.async {
                self.heroes = heroes
                self.delegate?.presentHeroes(heroes: heroes)
            }
        }
    }
    
    func getPublishers(heroes: [Hero]){
        var publishers = [String]()

        for hero in heroes {
            publishers.append(hero.biography?.publisher ?? "None")
        }
        
        publishers.removeDuplicates()
    }
    
    func didTap(hero: Hero){
        self.delegate?.presentHero(hero: hero)
    }
    
    func searchHeroes(searchText: String){
        
        var filteredHeroes = [Hero]()
        
        if searchText == "" {
            filteredHeroes = heroes
        }else{
            filteredHeroes = heroes.filter{($0.name?.lowercased().contains(searchText.lowercased()))!}
        }
        
        delegate?.presentHeroes(heroes: filteredHeroes)
    }
}


extension Array where Element: Hashable {
    func removingDuplicates() -> [Element] {
        var addedDict = [Element: Bool]()

        return filter {
            addedDict.updateValue(true, forKey: $0) == nil
        }
    }

    mutating func removeDuplicates() {
        self = self.removingDuplicates()
    }
}
