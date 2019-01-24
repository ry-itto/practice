//
//  ViewController.swift
//  CustomizedViewSample
//
//  Created by 伊藤凌也 on 2019/01/22.
//  Copyright © 2019 ry-itto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let custom = CustomizedView(frame: CGRect(x: 100, y: 100, width: 200, height: 100))
        view.addSubview(custom)
    }
}

