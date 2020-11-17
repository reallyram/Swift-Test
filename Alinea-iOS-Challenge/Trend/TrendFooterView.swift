//
//  TrendFooterView.swift
//  Alinea-iOS-Challenge
//
//  Created by Ram Suthar on 17/11/20.
//  Copyright © 2020 Ram Suthar. All rights reserved.
//

import UIKit

class TrendFooterView: UITableViewHeaderFooterView {
    
    let bgView: UIView = {
        let view = UIView()
        view.backgroundColor = .tableBG
        return view
    }()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
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
