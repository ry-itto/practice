//
//  ViewController.swift
//  RxSample
//
//  Created by 伊藤凌也 on 2019/03/09.
//  Copyright © 2019 ry-itto. All rights reserved.
//

import UIKit
import RxSwift

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel?
    
    let viewModel = ViewModel()
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        _ = viewModel.observable.subscribe(onNext: { [unowned self] count in
            self.label?.text = "\(count)"
        }).disposed(by: disposeBag)
    }

    @IBAction func countUp(_ sender: UIButton) {
        viewModel.countUp()
    }
}
