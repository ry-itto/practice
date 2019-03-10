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
        Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { [unowned self] _ in
            self.count += 1
            self.subject.asObserver().onNext(self.count)
        }
    }
}
