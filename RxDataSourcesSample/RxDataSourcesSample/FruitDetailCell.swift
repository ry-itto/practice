//
//  FruitDetailCell.swift
//  RxDataSourcesSample
//
//  Created by 伊藤凌也 on 2019/03/26.
//  Copyright © 2019 ry-itto. All rights reserved.
//

import UIKit

class FruitDetailCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var cost: UILabel!
    @IBOutlet weak var isSweety: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func configure(fruit: Fruit) {
        name.text = fruit.name
        cost.text = "\(fruit.cost)"
        isSweety.text = fruit.isSweety ? "甘い！" : "甘くない！"
    }
}
