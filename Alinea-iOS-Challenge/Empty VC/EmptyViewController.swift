//
//  EmptyViewController.swift
//  Alinea-iOS-Challenge
//
//  Created by Ram Suthar on 17/11/20.
//  Copyright © 2020 Ram Suthar. All rights reserved.
//

import UIKit

class EmptyViewController: UIViewController {

    let messageLabel: UILabel = {
       let label = UILabel()
        label.text = "Work in progress..."
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        view.addSubview(messageLabel)
        let constraints = [
            messageLabel.topAnchor.constraint(equalTo: view.topAnchor),
            messageLabel.leftAnchor.constraint(equalTo: view.leftAnchor),
            messageLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            messageLabel.rightAnchor.constraint(equalTo: view.rightAnchor)
        ]
        
        NSLayoutConstraint.activate(constraints)
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
