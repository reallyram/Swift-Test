//
//  RootNavigationController.swift
//  Alinea-iOS-Challenge
//
//  Created by Ram Suthar on 16/11/20.
//  Copyright © 2020 Ram Suthar. All rights reserved.
//

import UIKit

class RootNavigationController: UINavigationController {
    
    // Root View Controller in Navigation
    let rootVC = TabBarController()
    
    init() {
        super.init(rootViewController: rootVC)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Left and right menu button color
        navigationBar.tintColor = .menuButton
        
        // Make White navigation bar & hide hairline shadow.
        navigationBar.isTranslucent = false
        navigationBar.shadowImage = UIImage()
        
        // Preselect second tab
        rootVC.selectedIndex = 1
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
