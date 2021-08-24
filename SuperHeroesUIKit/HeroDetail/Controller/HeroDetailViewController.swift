//
//  HeroDetailViewController.swift
//  SuperHeroesUIKit
//
//  Created by andres jaramillo on 20/08/21.
//

import UIKit

class HeroDetailViewController: ViewController<HeroDetailView> {

    var hero: Hero
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    init(with hero: Hero) {
        self.hero = hero
        
        super.init(nibName: nil, bundle: nil)
        
        title = self.hero.name ?? "Unknow"
        customView.detaImageView.downloadImage(url: URL(string:hero.images?.lg ?? "")!)
        
        
        createBioSegment()
        createBioSegment2()
        createBioSegment3()
    }
    
    func createBioSegment(){
        let segment = SegmentView(segmentTitle: "Biography")
        segment.addView(view: addTitleNDetail(title: "Fullname:", detail: hero.biography?.fullName ?? "Unknow"))
        segment.addView(view: addTitleNDetail(title: "Place Of Birth:", detail: hero.biography?.placeOfBirth ?? "Unknow"))
        segment.addView(view: addTitleNDetail(title: "Alignment:", detail: hero.biography?.alignment ?? "Unknow"))
        segment.addView(view: addTitleNDetail(title: "Publisher:", detail: hero.biography?.publisher ?? "Unknow"))
        segment.addSpace()
        
        customView.stackView.addArrangedSubview(segment)
    }
    
    func createBioSegment2(){
        let segment = SegmentView(segmentTitle: "Biography")
        segment.addView(view: addTitleNDetail(title: "Fullname:", detail: hero.biography?.fullName ?? "Unknow"))
        segment.addView(view: addTitleNDetail(title: "Place Of Birth:", detail: hero.biography?.placeOfBirth ?? "Unknow"))
        segment.addView(view: addTitleNDetail(title: "Alignment:", detail: hero.biography?.alignment ?? "Unknow"))
        segment.addView(view: addTitleNDetail(title: "Publisher:", detail: hero.biography?.publisher ?? "Unknow"))
        segment.addSpace()
        
        customView.stackView.addArrangedSubview(segment)
    }
    
    func createBioSegment3(){
        let segment = SegmentView(segmentTitle: "Biography")
        segment.addView(view: addTitleNDetail(title: "Fullname:", detail: hero.biography?.fullName ?? "Unknow"))
        segment.addView(view: addTitleNDetail(title: "Place Of Birth:", detail: hero.biography?.placeOfBirth ?? "Unknow"))
        segment.addView(view: addTitleNDetail(title: "Alignment:", detail: hero.biography?.alignment ?? "Unknow"))
        segment.addView(view: addTitleNDetail(title: "Publisher:", detail: hero.biography?.publisher ?? "Unknow"))
        segment.addSpace()
        
        customView.stackView.addArrangedSubview(segment)
    }
        
    func addTitleNDetail(title: String, detail: String)->UIView{
        let titleAndDetail = TitleAndDetailView()
        titleAndDetail.configure(title: title, detail: detail)
        
        return titleAndDetail
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
