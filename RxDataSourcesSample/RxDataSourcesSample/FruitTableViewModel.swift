//
//  FruitTableViewModel.swift
//  RxDataSourcesSample
//
//  Created by 伊藤凌也 on 2019/03/26.
//  Copyright © 2019 ry-itto. All rights reserved.
//

import RxSwift
import RxCocoa
import RxDataSources

class FruitTableViewModel {
    private let disposeBag = DisposeBag()
    
    let fruitItems: Observable<[AnimatableSectionModel<String, FruitSectionItem>]>
    
    init() {
        let fruits: [Fruit] = Fruit.generateSamples()
        let fruitSectionItems = fruits.enumerated()
            .map { (offset, fruit) -> FruitSectionItem in
                offset % 2 == 0 ? FruitSectionItem.onlyName(data: fruit) : FruitSectionItem.detail(data: fruit)
            }
        fruitItems = Observable.just([AnimatableSectionModel(model: "", items: fruitSectionItems)])
    }
}
