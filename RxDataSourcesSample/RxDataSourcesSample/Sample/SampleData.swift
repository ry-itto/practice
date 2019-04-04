//
//  SampleData.swift
//  RxDataSourcesSample
//
//  Created by 伊藤凌也 on 2019/03/26.
//  Copyright © 2019 ry-itto. All rights reserved.
//

import Foundation

class Fruit {
    let id: String
    let name: String
    let cost: Int
    let isSweety: Bool
    
    init(name: String, cost: Int, isSweety: Bool) {
        self.id = UUID().uuidString
        self.name = name
        self.cost = cost
        self.isSweety = isSweety
    }
    
    static func generateSamples() -> [Fruit] {
        return [
            Fruit(name: "りんご", cost: 200, isSweety: true),
            Fruit(name: "みかん", cost: 100, isSweety: true),
            Fruit(name: "レモン", cost: 150, isSweety: false)
        ]
    }
}
