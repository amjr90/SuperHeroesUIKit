//
//  TitleAndDetailView.swift
//  SuperHeroesUIKit
//
//  Created by andres jaramillo on 23/08/21.
//

import UIKit

class TitleAndDetailView: UIStackView {

    let titleLable: UILabel = {
        let label = UILabel()
        label.font = .boldSystemFont(ofSize: 18)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .label
        label.setContentHuggingPriority(.defaultHigh, for: .horizontal)
        return label
    }()

    let detailLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .label
        label.setContentHuggingPriority(.defaultLow, for: .horizontal)
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        spacing = 10
        setupLayout()
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(title: String, detail: String){
        titleLable.text = title
        detailLabel.text = detail
    }
    
    func setupLayout(){
        addArrangedSubview(titleLable)
        addArrangedSubview(detailLabel)
    }
    
}
