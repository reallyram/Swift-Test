//
//  CategoryTableViewCell.swift
//  Alinea-iOS-Challenge
//
//  Created by Ram Suthar on 16/11/20.
//  Copyright © 2020 Ram Suthar. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    
    var containerView: UIView = {
        let view = UIView()
        view.layer.cornerRadius = 40
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    var iconView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.tintColor = .white
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        addSubview(containerView)
        containerView.addSubview(iconView)
        containerView.addSubview(nameLabel)
        
        let constraints = [
            containerView.topAnchor.constraint(equalTo: topAnchor, constant: 14),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -14),
            containerView.leftAnchor.constraint(equalTo: leftAnchor, constant: 24),
            containerView.rightAnchor.constraint(equalTo: rightAnchor, constant: -24),
            containerView.heightAnchor.constraint(equalToConstant: 80),
            iconView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            iconView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 34),
            iconView.heightAnchor.constraint(equalToConstant: 38),
            iconView.widthAnchor.constraint(equalToConstant: 38),
            nameLabel.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: iconView.trailingAnchor, constant: 24),
            nameLabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: 34)
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
        containerView.layer.borderColor = selected ? UIColor.gray.cgColor : UIColor.clear.cgColor
        containerView.layer.borderWidth = 2
    }

}
