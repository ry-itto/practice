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
    
    @IBOutlet var publish: UILabel?
    @IBOutlet var behavior: UILabel?
    @IBOutlet var variable: UILabel?
    
    let viewModel = ViewModel()
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Publish
        _ = viewModel.publishObservable.subscribe(onNext: { [unowned self] count in
            DispatchQueue.main.async {
                self.publish?.text = "\(count)"
            }
        }).disposed(by: disposeBag)
        
        // Behavior
        _ = viewModel.behaviorObservable.subscribe(onNext: { [unowned self] count in
            DispatchQueue.main.async {
                self.behavior?.text = "\(count)"
            }
        }).disposed(by: disposeBag)
        
        // Variable
        _ = viewModel.countObservable.subscribe(onNext: { [unowned self] count in
            DispatchQueue.main.async {
                self.variable?.text = "\(count)"
            }
        })
    }
}
