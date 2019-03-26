//
//  FruitOnlyNameCell.swift
//  RxDataSourcesSample
//
//  Created by 伊藤凌也 on 2019/03/26.
//  Copyright © 2019 ry-itto. All rights reserved.
//

import UIKit

class FruitOnlyNameCell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(fruit: Fruit) {
        name.text = fruit.name
    }
}
