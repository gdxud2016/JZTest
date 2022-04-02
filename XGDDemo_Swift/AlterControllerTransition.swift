//
//  AlterControllerTransition.swift
//  Offer_Swift
//
//  Created by xgd on 2022/3/9.
//

import UIKit
import Charts

class AlterControllerTransition: NSObject, UIViewControllerTransitioningDelegate {

    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        debugPrint("presented")
        return Animator()
    }


    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        debugPrint("dismissed")
        return nil
    }


    func interactionControllerForPresentation(using animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning? {
        debugPrint("interactionControllerForPresentation")
        return nil
    }


    func interactionControllerForDismissal(using animator: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning?  {
        debugPrint("interactionControllerForDismissal")
        return nil
    }
//
//    optional func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
//
//    }
}
