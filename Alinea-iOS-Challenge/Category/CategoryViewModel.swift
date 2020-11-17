//
//  CategoryViewModel.swift
//  Alinea-iOS-Challenge
//
//  Created by Ram Suthar on 17/11/20.
//  Copyright © 2020 Ram Suthar. All rights reserved.
//

import UIKit

class CategoryViewModel {
    let items = [
        Category(name: "Stocks",
                 icon: "stocks",
                 backgroundColor: .lightBlue),
        Category(name: "ETFs",
                 icon: "etfs",
                 backgroundColor: .blueBar),
        Category(name: "Crypto",
                 icon: "bitcoin",
                 backgroundColor: .yellowMid)
    ]
}
