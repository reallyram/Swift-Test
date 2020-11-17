//
//  ExploreViewController.swift
//  Alinea-iOS-Challenge
//
//  Created by Ram Suthar on 15/11/20.
//  Copyright © 2020 Ram Suthar. All rights reserved.
//

import UIKit

class ExploreViewController: UIViewController {

    let categoryVC: CategoryTableViewController = {
        let vc = CategoryTableViewController(style: .plain, viewModel: CategoryViewModel())
        return vc
    }()
    
    let themeVC: ThemeCollectionViewController = {
        let vc = ThemeCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout(), viewModel: ThemeViewModel())
        return vc
    }()
    
    let trendVC: TrendTableViewController = {
        let vc = TrendTableViewController(style: .plain, viewModel: TrendViewModel())
        return vc
    }()
    
    let pageVC: UIPageViewController = {
        let vc = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal)
        vc.view.translatesAutoresizingMaskIntoConstraints = false
        return vc
    }()
    
    
    var items: [UIViewController]!
    
    let tabs: SegmentedControl = {
        let segmentedControl = SegmentedControl()
        segmentedControl.insertSegment(withTitle: "Category", at: 0, animated: false)
        segmentedControl.insertSegment(withTitle: "Themes", at: 1, animated: false)
        segmentedControl.insertSegment(withTitle: "Trending", at: 2, animated: false)
        segmentedControl.selectedSegmentIndex = 0
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        return segmentedControl
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .white
        
        view.addSubview(tabs)
        
        items = [categoryVC, themeVC, trendVC]
        
        pageVC.setViewControllers([categoryVC], direction: .forward, animated: false)
        pageVC.delegate = self
        
        view.addSubview(pageVC.view)
        addChild(pageVC)
        
        let constraints = [
            tabs.topAnchor.constraint(equalTo: view.topAnchor, constant: 12),
            tabs.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tabs.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tabs.heightAnchor.constraint(equalToConstant: 28),
            pageVC.view.topAnchor.constraint(equalTo: tabs.bottomAnchor, constant: 16),
            pageVC.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            pageVC.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            pageVC.view.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ]
        
        NSLayoutConstraint.activate(constraints)
        
        tabs.addTarget(self, action: #selector(changePage(_:)), for: .valueChanged)
    }
    
    @objc func changePage(_ sender: Any) {
        let i = index(of: pageVC.viewControllers!.first!)
        if i == tabs.selectedSegmentIndex {
            return
        }
        let vc = items[tabs.selectedSegmentIndex]
        let direction: UIPageViewController.NavigationDirection = (i < tabs.selectedSegmentIndex) ? .forward : .reverse
        pageVC.setViewControllers([vc], direction: direction, animated: true)
    }
}

extension ExploreViewController: UIPageViewControllerDelegate, UIPageViewControllerDataSource {
    
    func index(of vc: UIViewController) -> Int {
        return items.firstIndex(of: vc)!
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let i = index(of: viewController)
        if i == 0 {
            return nil
        }
        return items[i-1]
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let i = index(of: viewController)
        if i == items.count - 1 {
            return nil
        }
        return items[i+1]
    }
    
    
}
