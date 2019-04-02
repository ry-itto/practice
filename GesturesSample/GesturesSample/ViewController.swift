//
//  ViewController.swift
//  GesturesSample
//
//  Created by 伊藤凌也 on 2019/04/02.
//  Copyright © 2019 ry-itto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var targetView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addSwipeGesture()
//        addPanGesture()
    }
    
    func addSwipeGesture() {
        // targetはactionのレシーバを指定する感じ？
        let swipeGesture = UISwipeGestureRecognizer(target: self, action: #selector(swipeGestureAction(sender:)))
        targetView.addGestureRecognizer(swipeGesture)
    }
    @objc func swipeGestureAction(sender: UISwipeGestureRecognizer) {
        print("swipe \(sender.location(in: targetView))")
    }
    
    // 引っ張ってる間ずっとselectorのメソッド呼ばれてるイメージ
    func addPanGesture() {
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(panGestureAction(_:)))
        targetView.addGestureRecognizer(panGesture)
    }
    @objc func panGestureAction(_ sender: UIPanGestureRecognizer) {
        print("pan \(sender.translation(in: targetView))")
    }
}
