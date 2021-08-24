//
//  HeroesViewController.swift
//  SuperHeroesUIKit
//
//  Created by andres jaramillo on 18/08/21.
//

import UIKit

class HeroesViewController: ViewController<HeroesView> {
    
    private var heroesPresenter: HeroesPresenter?
    
    private var heroes: [Hero] = []{
        didSet{
            customView.collectionView.reloadData()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationController()
        setDelegates()
        getAllHeroes()
    }
    
    func setupNavigationController(){
        title = "Heroes"
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.action, target: self, action: #selector(barButtonPressed))
    }
    
    func setDelegates(){
        customView.collectionView.delegate = self
        customView.collectionView.dataSource = self
        customView.searchBar.delegate = self

        heroesPresenter = HeroesPresenter(delegate: self)
    }
    
    func getAllHeroes(){
        heroesPresenter?.fetchHeroes()
    }
    
    @objc
    func barButtonPressed(){
        
    }
}

extension HeroesViewController: HeroesPresenterDelegate{
    func presentHero(hero: Hero) {
        navigationController?.pushViewController(HeroDetailViewController(with: hero), animated: true)
    }
    
    func presentHeroes(heroes: [Hero]) {
        self.heroes = heroes
    }
}

extension HeroesViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return heroes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HeroeCollectionViewCell
        cell.configureWith(hero: heroes[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        heroesPresenter?.didTap(hero: heroes[indexPath.row])
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        cell.alpha = 0

        UIView.animate(
            withDuration: 0.5,
            
            animations: {
                cell.alpha = 1
        })
    }
}

extension HeroesViewController: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        heroesPresenter?.searchHeroes(searchText: searchText)
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.view.endEditing(true)
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        self.view.endEditing(true)
    }
}
