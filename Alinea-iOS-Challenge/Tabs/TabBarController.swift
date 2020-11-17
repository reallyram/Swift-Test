//
//  TabBarController.swift
//  Alinea-iOS-Challenge
//
//  Created by Ram Suthar on 15/11/20.
//  Copyright © 2020 Ram Suthar. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {
    
    // Custom Tabbar
    var _tabBar: TabBar = {
        let tb = TabBar()
        tb.backgroundColor = .clear
        tb.unselectedItemTintColor = .unselectedButton
        tb.tintColor = .white
        tb.clipsToBounds = false
        tb.layer.masksToBounds = false
        return tb
    }()
    
    init() {
        super.init(nibName: nil, bundle: nil)
        
        // Setup view controllers
        let homeVC = EmptyViewController()
        homeVC.tabBarItem = UITabBarItem(title: nil, image: UIImage(named: "home"), tag: 0)
        
        let exploreVC = ExploreViewController()
        exploreVC.tabBarItem = .init(title: nil, image: UIImage(named: "search"), tag: 1)
        
        let trendsVC = EmptyViewController()
        trendsVC.tabBarItem = .init(title: nil, image: UIImage(named: "graph"), tag: 2)
        
        let peopleVC = EmptyViewController()
        peopleVC.tabBarItem = .init(title: nil, image: UIImage(named: "people"), tag: 3)
        
        let helpVC = EmptyViewController()
        helpVC.tabBarItem = .init(title: nil, image: UIImage(named: "bulb"), tag: 4)
        
        viewControllers = [homeVC, exploreVC, trendsVC, peopleVC, helpVC]
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Set custom tabbar
        setValue(_tabBar, forKey: "tabBar")
        
        // Increase tabbar bottom spacing
        additionalSafeAreaInsets = .init(top: 0, left: 0, bottom: 7, right: 0)
        
        // Menu button
        let menu = UIBarButtonItem(image: UIImage(named: "menu"), style: .plain, target: self, action: #selector(openMenu(_:)))
        navigationItem.leftBarButtonItem = menu
        
        // Notifications button
        let notificstions = UIBarButtonItem(image: UIImage(named: "bell"), style: .plain, target: self, action: #selector(openNotifications(_:)))
        navigationItem.rightBarButtonItem = notificstions
        
        navigationItem.title = "Explore"
    }
    
    @objc func openMenu(_ sender: Any) {
        
    }
    
    @objc func openNotifications(_ sender: Any) {
        
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
