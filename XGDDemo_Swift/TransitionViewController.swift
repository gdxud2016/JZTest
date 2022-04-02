//
//  TransitionViewController.swift
//  XGDDemo_Swift
//
//  Created by xgd on 2022/4/1.
//

import UIKit

class TransitionViewController: UIViewController {

    var imageView: UIImageView = UIImageView()
    var imageName: String = "" {
        didSet {
            imageView.image = UIImage(named: imageName)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.contentMode = .scaleAspectFit
        view.addSubview(imageView)
        
        debugPrint("To View Ip", String(format: "%p___%p", view as! CVarArg, self as! CVarArg))
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        imageView.frame = view.bounds
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        dismiss(animated: true, completion: nil)
    }
}
