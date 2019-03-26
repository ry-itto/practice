//
//  FruitTableDelegate.swift
//  RxDataSourcesSample
//
//  Created by 伊藤凌也 on 2019/03/27.
//  Copyright © 2019 ry-itto. All rights reserved.
//

import RxDataSources

enum FruitSectionItem: IdentifiableType, Equatable {
    typealias Identity = String
    case onlyName(data: Fruit)
    case detail(data: Fruit)
    
    var identity: FruitSectionItem.Identity {
        switch self {
        case .onlyName(let data):
            return data.id
        case .detail(let data):
            return data.id
        }
    }
    
    static func == (lhs: FruitSectionItem, rhs: FruitSectionItem) -> Bool {
        return lhs.identity == rhs.identity
    }
}

class FruitTableDelegate: NSObject, UITableViewDelegate {
    lazy var dataSources = RxTableViewSectionedAnimatedDataSource<AnimatableSectionModel<String, FruitSectionItem>>(animationConfiguration: AnimationConfiguration(insertAnimation: .automatic, reloadAnimation: .automatic, deleteAnimation: .automatic), configureCell: { (dataSource, tableView, indexPath, item) -> UITableViewCell in
        switch item {
        case .onlyName(let data):
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: type(of: FruitOnlyNameCell.self)), for: indexPath) as! FruitOnlyNameCell
            cell.configure(fruit: data)
            return cell
        case .detail(let data):
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: type(of: FruitDetailCell.self)), for: indexPath) as! FruitDetailCell
            cell.configure(fruit: data)
            return cell
        }
    }, canEditRowAtIndexPath: { (dataSource, indexPath) -> Bool in
        return true
    })
}
