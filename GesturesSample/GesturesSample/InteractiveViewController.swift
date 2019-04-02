//
//  InteractiveViewController.swift
//  GesturesSample
//
//  Created by 伊藤凌也 on 2019/04/03.
//  Copyright © 2019 ry-itto. All rights reserved.
//

import UIKit

/// モーダルを引っ張るとモーダルがついてきてくれる感じのものを作るクラス
class InteractiveViewController: UIViewController {

    var beforeMovingPoint: CGFloat = 0
    @IBOutlet weak var fakeModalView: UIView! {
        didSet {
            addPanGesture()
        }
    }
    @IBOutlet weak var fakeModalViewTopToSafeAreaTop: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        beforeMovingPoint = fakeModalViewTopToSafeAreaTop.constant
    }
    
    func addPanGesture() {
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(panGestureAction(_:)))
        panGesture.delegate = self
        fakeModalView.addGestureRecognizer(panGesture)
    }
    
    @objc func panGestureAction(_ sender: UIPanGestureRecognizer) {
        let translation = sender.translation(in: fakeModalView)
        fakeModalViewTopToSafeAreaTop.constant = translation.y + beforeMovingPoint
    }
}

extension InteractiveViewController: UIGestureRecognizerDelegate {
    func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        beforeMovingPoint = fakeModalViewTopToSafeAreaTop.constant
        return true
    }
}
