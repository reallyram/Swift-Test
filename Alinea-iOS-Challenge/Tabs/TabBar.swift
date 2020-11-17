//
//  TabBar.swift
//  Alinea-iOS-Challenge
//
//  Created by Ram Suthar on 15/11/20.
//  Copyright © 2020 Ram Suthar. All rights reserved.
//

import UIKit

class TabBar: UITabBar {
    
    var selectedBG: CALayer!
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        
        var frame = rect
        frame.origin.y = -7
        frame.size.height += 7
        let path = UIBezierPath(roundedRect: frame,
                                byRoundingCorners: [.topLeft, .topRight],
                                cornerRadii: .init(width: 16, height: 16))
        
        layer.shadowOpacity = 0.15
        layer.shadowOffset = .zero
        layer.shadowRadius = 4
        layer.shadowPath = path.cgPath
        
        let bgLayer = CALayer()
        bgLayer.frame = frame
        bgLayer.cornerRadius = 16
        bgLayer.backgroundColor =  UIColor.white.cgColor
        bgLayer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        layer.insertSublayer(bgLayer, at: 0)
        
        let blueLayer = CALayer()
        blueLayer.frame = blueLayerFrame
        blueLayer.cornerRadius = 4
        blueLayer.backgroundColor = UIColor.blueBar.cgColor
        blueLayer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]
        layer.insertSublayer(blueLayer, at: 1)
        selectedBG = blueLayer
    }
    
    private var blueLayerFrame: CGRect {
        let width = bounds.width / CGFloat(items?.count ?? 1)
        let x = width * CGFloat((items!.firstIndex(of: selectedItem!))!) + (width - 62)/2
        let frame = CGRect(x: x, y: -7, width: 62, height: bounds.height+7)
        return frame
    }
    
    override var selectedItem: UITabBarItem? {
        didSet {
            guard let selectedBG = selectedBG else {
                return
            }
            selectedBG.frame = blueLayerFrame
        }
    }

}
