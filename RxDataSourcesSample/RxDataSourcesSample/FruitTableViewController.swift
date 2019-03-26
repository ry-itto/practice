//
//  FruitTableViewController.swift
//  RxDataSourcesSample
//
//  Created by 伊藤凌也 on 2019/03/26.
//  Copyright © 2019 ry-itto. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class FruitTableViewController: UIViewController {
    
    private let disposeBag = DisposeBag()
    
    private let delegate: FruitTableDelegate = FruitTableDelegate()
    private let viewModel: FruitTableViewModel = FruitTableViewModel()

    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.register(UINib(nibName: "FruitOnlyNameCell", bundle: nil), forCellReuseIdentifier: String(describing: type(of: FruitOnlyNameCell.self)))
            tableView.register(UINib(nibName: "FruitDetailCell", bundle: nil), forCellReuseIdentifier: String(describing: type(of: FruitDetailCell.self)))
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rx.setDelegate(delegate).disposed(by: disposeBag)
        viewModel.fruitItems
            .bind(to: tableView.rx.items(dataSource: delegate.dataSources))
            .disposed(by: disposeBag)
    }
}
