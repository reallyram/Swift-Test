//
//  TrendViewModel.swift
//  Alinea-iOS-Challenge
//
//  Created by Ram Suthar on 17/11/20.
//  Copyright © 2020 Ram Suthar. All rights reserved.
//

import UIKit

class TrendViewModel {
    
    struct Item {
        let name: String
        let rows: [Trend]
    }
    
    let items: [Item] = [
        Item(name: "Top Gainers", rows: [
            Trend(name: "Medifast", symbol: "MEDI", icon: "medifast", value: "+50.78", color: .positive),
            Trend(name: "Pinterest", symbol: "PINS", icon: "pinterest", value: "-4.77%", color: .negative),
            Trend(name: "Slack Technologies", symbol: "WORK", icon: "slack", value: "-5.99%", color: .negative),
            Trend(name: "Evoqua Water", symbol: "AQUA", icon: "evoqua", value: "+5.99%", color: .positive)
        ]),
        Item(name: "Top Sellers", rows: [
            Trend(name: "Slack Technologies", symbol: "WORK", icon: "slack", value: "-5.99%", color: .negative),
            Trend(name: "Evoqua Water", symbol: "AQUA", icon: "evoqua", value: "+5.99%", color: .positive)
        ])
    ]
}
