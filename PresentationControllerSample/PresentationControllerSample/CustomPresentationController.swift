//
//  CustomPresentationController.swift
//  PresentationControllerSample
//
//  Created by 伊藤凌也 on 2019/03/23.
//  Copyright © 2019 ry-itto. All rights reserved.
//

import Foundation
import UIKit

class CustomPresentationController: UIPresentationController{
    // 背景の透けたビュー
    private let overlayView = UIView()
    
    override var frameOfPresentedViewInContainerView: CGRect {
        var frame = containerView?.frame ?? .zero
        guard let presentedView = presentedView else { return frame }
        frame.origin.y = frame.height - presentedView.frame.height
        frame.size.height = presentedView.frame.height
        return frame
    }
    
    override func presentationTransitionWillBegin() {
        super.presentationTransitionWillBegin()
        guard let containerView = containerView else { return }
        overlayView.frame = containerView.frame
        overlayView.backgroundColor = .black
        overlayView.alpha = 0.5
        containerView.insertSubview(overlayView, at: 0)
        presentedViewController.transitionCoordinator?.animate(alongsideTransition: { [weak self] _ in
            self?.overlayView.alpha = 0.3
        }, completion: nil)
    }
    
    override func dismissalTransitionWillBegin() {
        super.dismissalTransitionWillBegin()
        presentedViewController.transitionCoordinator?.animate(alongsideTransition: { [weak self] _ in
            self?.overlayView.alpha = 0.0
        }, completion: nil)
    }
    
    override func dismissalTransitionDidEnd(_ completed: Bool) {
        super.dismissalTransitionDidEnd(completed)
        if completed {
            overlayView.removeFromSuperview()
        }
    }
}
