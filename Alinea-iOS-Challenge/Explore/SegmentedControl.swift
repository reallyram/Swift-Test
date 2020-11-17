//
//  SegmentedControl.swift
//  Alinea-iOS-Challenge
//
//  Created by Ram Suthar on 16/11/20.
//  Copyright © 2020 Ram Suthar. All rights reserved.
//

import UIKit

class SegmentedControl: UISegmentedControl {

    let underlineLayer = CALayer()
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        
        setBackgroundImage(UIImage(), for: .normal, barMetrics: .default)
        setDividerImage(UIImage.separatorImage, forLeftSegmentState: .normal, rightSegmentState: .normal, barMetrics: .default)
        setDividerImage(UIImage.separatorImage, forLeftSegmentState: .selected, rightSegmentState: .normal, barMetrics: .default)
        setDividerImage(UIImage.separatorImage, forLeftSegmentState: .normal, rightSegmentState: .selected, barMetrics: .default)
        
        setTitleTextAttributes([
            NSAttributedString.Key.foregroundColor: UIColor.blueBar,
            NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 15)
        ], for: .selected)
        
        setTitleTextAttributes([
            NSAttributedString.Key.foregroundColor: UIColor.menuButton,
            NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 15)
        ], for: .normal)
        
        underlineLayer.frame = barFrame
        underlineLayer.backgroundColor = UIColor.blueBar.cgColor
        isMomentary = false
        layer.insertSublayer(underlineLayer, at: 0)
    }
    
    private var barFrame: CGRect {
        let barWidth: CGFloat = 68
        let barHeight: CGFloat = 3
        let singleItemWidth: CGFloat = (bounds.width / CGFloat(numberOfSegments))
        let width = singleItemWidth * CGFloat(selectedSegmentIndex)
        let x = ((singleItemWidth - barWidth) / 2) + width
        return CGRect(origin: .init(x: x, y: bounds.height-barHeight), size: .init(width: barWidth, height: barHeight))
    }
    
    override func didChangeValue(forKey key: String) {
        if key == "selectedSegmentIndex" {
            underlineLayer.frame = barFrame
        }
    }
}
