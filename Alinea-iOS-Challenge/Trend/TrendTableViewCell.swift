//
//  TrendTableViewCell.swift
//  Alinea-iOS-Challenge
//
//  Created by Ram Suthar on 16/11/20.
//  Copyright © 2020 Ram Suthar. All rights reserved.
//

import UIKit

class TrendTableViewCell: UITableViewCell {

    let iconView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = .imageBG
        imageView.layer.cornerRadius = 18
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .name
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let symbolLabel: UILabel = {
       let label = UILabel()
        label.textColor = .symbol
        label.font = UIFont.systemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let valueLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.textAlignment = .center
        label.backgroundColor = .gray
        label.layer.cornerRadius = 10
        label.clipsToBounds = true
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(iconView)
        addSubview(nameLabel)
        addSubview(valueLabel)
        addSubview(symbolLabel)
        
        let views = [
            "iconView": iconView,
            "nameLabel": nameLabel,
            "symbolLabel": symbolLabel,
            "valueLabel": valueLabel
        ]
        
        let metrics = [
            "HPadding": 24,
            "HSpacing": 16,
            "iconSide": 36,
            "valueWidth": 76,
            "valueHeight": 20
        ]
        
        // Add constraints using VFL
        let horizontal = NSLayoutConstraint.constraints(
            withVisualFormat: "H:|-(HPadding)-[iconView(iconSide)]-(HSpacing)-[nameLabel]-(HSpacing)-[valueLabel(valueWidth)]-(HPadding)-|",
            options: [], metrics: metrics, views: views)
        let iconVertical = NSLayoutConstraint.constraints(
            withVisualFormat: "V:|-[iconView(iconSide)]-|",
            options: [], metrics: metrics, views: views)
        let symbolHorizontal = NSLayoutConstraint.constraints(
            withVisualFormat: "H:[iconView]-(HSpacing)-[symbolLabel]-(HSpacing)-[valueLabel]",
            options: [], metrics: metrics, views: views)
        addConstraints(horizontal + iconVertical + symbolHorizontal)
        
        // Add anchor constraints
        let constraints = [
            valueLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            valueLabel.heightAnchor.constraint(equalToConstant: 20),
            nameLabel.topAnchor.constraint(equalTo: iconView.topAnchor),
            symbolLabel.bottomAnchor.constraint(equalTo: iconView.bottomAnchor)
        ]
        
        NSLayoutConstraint.activate(constraints)
        
        selectionStyle = .none
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        backgroundColor = selected ? .tableBG : .white
    }

}
