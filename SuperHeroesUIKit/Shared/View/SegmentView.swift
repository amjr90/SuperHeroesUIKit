//
//  SegmentView.swift
//  SuperHeroesUIKit
//
//  Created by andres jaramillo on 23/08/21.
//

import UIKit

class SegmentView: UIView {

    let segmentTitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .boldSystemFont(ofSize: 25)
        return label
    }()
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        return stackView
    }()

    init(segmentTitle: String) {
        super.init(frame: .zero)
        segmentTitleLabel.text = segmentTitle
        setupLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupLayout(){
        addSubview(segmentTitleLabel)
        segmentTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8).isActive = true
        segmentTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 8).isActive = true
        segmentTitleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8).isActive = true
        
        addSubview(stackView)
        stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
        stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 16).isActive = true
        stackView.topAnchor.constraint(equalTo: segmentTitleLabel.bottomAnchor, constant: 8).isActive = true
        stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 8).isActive = true
    }
    
    func addView(view: UIView){
        stackView.addArrangedSubview(view)
    }
    
    func addSpace(){
        let space = UIView()
        space.heightAnchor.constraint(equalToConstant: 10).isActive = true
        stackView.addArrangedSubview(space)
    }
    
}
