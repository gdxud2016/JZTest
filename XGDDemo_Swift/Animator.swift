//
//  Animator.swift
//  XGDDemo_Swift
//
//  Created by xgd on 2022/4/1.
//

import UIKit

class Animator: NSObject, UIViewControllerAnimatedTransitioning {
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.5
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        let fromVC = transitionContext.viewController(forKey: .from) as! ImagePickerViewController
        let fromView = transitionContext.view(forKey: .from)
        
        let toVC = transitionContext.viewController(forKey: .to) as! TransitionViewController
        let toView = transitionContext.view(forKey: .to)
        
        debugPrint("View Ip", String(format: "%p__%p", fromView!, toView!))
        debugPrint("ViewController Ip", String(format: "%p__%p", fromVC, toVC))
        
        let contentView = transitionContext.containerView
        
        let animateView = fromVC.sourceView
        
        
        
    }
    
//    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
//        let fromView = transitionContext.view(forKey: .from)
////        let fromVC = transitionContext.viewController(forKey: .from)
//
//        let contentView = transitionContext.containerView
//
//        UIGraphicsBeginImageContext(fromView?.frame.size ?? .zero)
//        fromView?.drawHierarchy(in: fromView?.bounds ?? .zero, afterScreenUpdates: false)
//        let image = UIGraphicsGetImageFromCurrentImageContext()
//        UIGraphicsEndImageContext()
//
//        fromView?.isHidden = true
//        let imageView = UIImageView(image: image)
//        imageView.frame = CGRect(x:100, y: 200,
//                                  width: (fromView?.frame.size.width ?? 200) - 200,
//                                  height: (fromView?.frame.size.height ?? 200) - 400)
//        contentView.addSubview(imageView)
//
//        var toView: UIView?
//        if let toVC = transitionContext.viewController(forKey: .to) {
//            toView = transitionContext.view(forKey: .to)
//            toView?.frame = transitionContext.finalFrame(for: toVC)
//            contentView.addSubview(toView ?? UIView())
//        }
//        toView?.isHidden = true
//
//        UIView.animate(withDuration: 0.5) {
//            imageView.frame = toView?.bounds ?? .zero
//        } completion: { _ in
//            imageView.removeFromSuperview()
//            fromView?.isHidden = false
//            toView?.isHidden = false
//            transitionContext.completeTransition(true)
//        }
//
//
//    }
}
