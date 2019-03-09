//
//  ViewModel.swift
//  RxSample
//
//  Created by 伊藤凌也 on 2019/03/09.
//  Copyright © 2019 ry-itto. All rights reserved.
//

import Foundation
import RxSwift

class ViewModel {
    private let subject = PublishSubject<Int>()
    let observable: Observable<Int>
    
    private var count: Int = 0
    
    init() {
        observable = subject.asObservable()
    }
    
    func countUp() {
        count += 1
        print("current count is \(count)")
        subject.asObserver().onNext(count)
    }
}
