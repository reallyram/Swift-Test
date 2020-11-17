//
//  ThemeCollectionViewCell.swift
//  Alinea-iOS-Challenge
//
//  Created by Ram Suthar on 16/11/20.
//  Copyright © 2020 Ram Suthar. All rights reserved.
//

import UIKit

class ThemeCollectionViewCell: UICollectionViewCell {
    
    let nameLabel: UILabel = {
       let label = UILabel()
        label.textColor = .black
        label.numberOfLines = 2
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let iconView: UIImageView = {
       let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .center
        imageView.tintColor = .themeItemBG
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubview(iconView)
        addSubview(nameLabel)
        
        let constraints = [
            iconView.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            iconView.leftAnchor.constraint(equalTo: leftAnchor, constant: 12),
            iconView.rightAnchor.constraint(equalTo: rightAnchor, constant: -12),
            iconView.widthAnchor.constraint(equalToConstant: 120),
            iconView.heightAnchor.constraint(equalToConstant: 90),
            nameLabel.topAnchor.constraint(equalTo: iconView.bottomAnchor, constant: 12),
            nameLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 12),
            nameLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -12),
            nameLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12),
            nameLabel.heightAnchor.constraint(equalToConstant: 36)
        ]
        NSLayoutConstraint.activate(constraints)
        
        backgroundColor = .tableBG
        layer.borderWidth = 1
        layer.borderColor = UIColor.themeItemBG.cgColor
        layer.cornerRadius = 8
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
