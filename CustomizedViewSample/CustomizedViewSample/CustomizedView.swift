//
//  CustomizedView.swift
//  CustomizedViewSample
//
//  Created by 伊藤凌也 on 2019/01/22.
//  Copyright © 2019 ry-itto. All rights reserved.
//

import UIKit

class CustomizedView: UIView {
    
    @IBOutlet var label: UILabel?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.loadNib()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.loadNib()
    }
    
    @IBAction func didButtonTapped(_ sender: UIButton) {
        label?.text = "tapped"
    }
    
    private func loadNib() {
        // UINibを使用する方法
//        guard let view = UINib(nibName: "CustomizedView", bundle: nil).instantiate(withOwner: self, options: nil).first as? UIView else {
//            return
//        }
        // Bundleを使用する方法
        guard let view = Bundle.main.loadNibNamed(String(describing: type(of: self)), owner: self, options: nil)?.last as? UIView else { return }
        view.frame = self.bounds
        self.addSubview(view)
    }
}
