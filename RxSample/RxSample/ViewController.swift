//
//  ViewController.swift
//  RxSample
//
//  Created by 伊藤凌也 on 2019/03/09.
//  Copyright © 2019 ry-itto. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    
    @IBOutlet var publish: UILabel?
    @IBOutlet var behavior: UILabel?
    @IBOutlet var variable: UILabel?
    
    let viewModel = ViewModel()
    private let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard
            let pLabel = publish,
            let bLabel = behavior
        else {
            return
        }
        
        // Publish(RxCocoaを使用してbindを利用した実装, 3回しかイベントが流れ切らない)
        // bind内でpublishを利用しようとするとOptionalのため，nilの可能性がある関係で「Generic parameter 'Self' could not be inferred」が発生する
        _ = viewModel.publishObservable
            .take(3)
            .map({"\($0)"})
            .bind(to: pLabel.rx.text)
            .disposed(by: disposeBag)
        
        // Behavior(RxCocoaを使用してbindを利用した実装)
        _ = viewModel.behaviorObservable
            .map({"\($0)"})
            .bind(to: bLabel.rx.text)
            .disposed(by: disposeBag)
        
        // Variable(Subscribeでの実装, 最初から2つのイベントは購読しない)
        _ = viewModel.countObservable
            .skip(2)
            .subscribe(onNext: { [unowned self] count in
            DispatchQueue.main.async {
                self.variable?.text = "\(count)"
            }
        })
    }
}
