//
//  PresentatingViewController.swift
//  PresentationControllerSample
//
//  Created by 伊藤凌也 on 2019/03/23.
//  Copyright © 2019 ry-itto. All rights reserved.
//

import UIKit

class PresentatingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func present(_ sender: Any) {
        let presentedVC = PresentedViewController()
        presentedVC.modalPresentationStyle = .custom
        presentedVC.transitioningDelegate = self
        present(presentedVC, animated: true, completion: nil)
    }
}

extension PresentatingViewController: UIViewControllerTransitioningDelegate {
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        return CustomPresentationController(presentedViewController: presented, presenting: presenting)
    }
}
