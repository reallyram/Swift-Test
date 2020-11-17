//
//  TrendHeaderView.swift
//  Alinea-iOS-Challenge
//
//  Created by Ram Suthar on 16/11/20.
//  Copyright © 2020 Ram Suthar. All rights reserved.
//

import UIKit

class TrendHeaderView: UITableViewHeaderFooterView {

    let nameLabel: UILabel = {
       let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 15)
        label.textColor = .name
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let bgView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        
        let views = [
            "nameLabel": nameLabel
        ]
        
        let metrics = [
            "HPadding": 24,
            "VPadding": 24
        ]
        
        addSubview(nameLabel)
        let vertical = NSLayoutConstraint.constraints(
            withVisualFormat: "H:|-(HPadding)-[nameLabel]-(HPadding)-|",
            options: [], metrics: metrics, views: views)
        let horizontal = NSLayoutConstraint.constraints(
            withVisualFormat: "V:|-(VPadding)-[nameLabel]-|",
            options: [], metrics: metrics, views: views)
        addConstraints(vertical + horizontal)
        
        backgroundView = bgView
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */

}
