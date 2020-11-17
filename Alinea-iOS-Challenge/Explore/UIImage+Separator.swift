//
//  UIImage+Separator.swift
//  Alinea-iOS-Challenge
//
//  Created by Ram Suthar on 17/11/20.
//  Copyright © 2020 Ram Suthar. All rights reserved.
//

import UIKit

extension UIImage {
    
    static var separatorImage: UIImage {
        let size = CGSize(width: 1, height: 28)
        UIGraphicsBeginImageContext(size)
        let context = UIGraphicsGetCurrentContext()
        
        context?.setFillColor(UIColor.white.cgColor)
        context?.fill(CGRect(origin: .zero, size: size))
        
        let frame = CGRect(x: 0, y: 8, width: 2, height: 12)
        context?.setFillColor(UIColor.divider.cgColor)
        context?.fill(frame)
        
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        return image!
    }
}
