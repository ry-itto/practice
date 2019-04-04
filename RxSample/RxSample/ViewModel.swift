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
    
    /**
     Publish: Subjectの典型的なもの
     Behavior: subscribeするタイミングでinitialize時に渡されたイベントを流す
     Variable: Behaviorをラップした形のもの。onErrorを使用する必要がないのなら使うべきであるらしい。valuプロパティに新しく値がセットされたタイミングでイベントが発行される。（非推奨になって，推奨でBehaviorRelayを利用するべきになったらしい。）
     
     */
    private let publishSubject = PublishSubject<Int>()
    private let behaviorSubject = BehaviorSubject<Int>(value: 0)
    private let countVar = Variable(0)
    
    let publishObservable: Observable<Int>
    let behaviorObservable: Observable<Int>
    let countObservable: Observable<Int>
    
    private var count: Int = 0 {
        didSet {
            self.publishSubject.asObserver().onNext(self.count)
            self.behaviorSubject.asObserver().onNext(self.count)
        }
    }
    
    init() {
        publishObservable = publishSubject.asObservable()
        behaviorObservable = behaviorSubject.asObservable()
        countObservable = countVar.asObservable()
        Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { [unowned self] _ in
            self.count += 1
            self.countVar.value += 1
        }
    }
    
    // Cold
    func createColdObservable(n: Int) -> Observable<Int> {
        return Observable.create { observerType -> Disposable in
            observerType.onNext(n)
            observerType.onCompleted()
            return Disposables.create()
        }
    }
}
