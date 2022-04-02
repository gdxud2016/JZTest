//
//  ImagePickerViewController.swift
//  XGDDemo_Swift
//
//  Created by xgd on 2022/4/2.
//

import UIKit

class ImagePickerViewController: UIViewController {
    
    var sourceView: UIView?
    var dataSources: [String] = Array()
    
    var del = AlterControllerTransition()
    
    // 推荐投资人表
    var collectionView: UICollectionView = {
        let size = UIScreen.main.bounds.size
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.sectionInset = UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
        layout.itemSize = CGSize(width: 180, height: 220)
        layout.minimumLineSpacing = 10
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        collectionView.bounces = false
        collectionView.showsHorizontalScrollIndicator = false
        
        collectionView.register(ImagePickerCell.self, forCellWithReuseIdentifier: "ImagePickerCell")
        return collectionView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        collectionView.delegate = self
        collectionView.dataSource = self
        view.addSubview(collectionView)
        
        dataSources.append("image_1")
        dataSources.append("image_2")
        dataSources.append("image_3")
        dataSources.append("image_4")
//        dataSources.append("image_5")
        collectionView.reloadData()
    }
        
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = view.bounds
    }

}

extension ImagePickerViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataSources.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ImagePickerCell", for: indexPath) as? ImagePickerCell
        cell?.imageView.image = UIImage(named: dataSources[indexPath.row])
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        guard let imageView = collectionView.cellForItem(at: indexPath) else { return }
        sourceView = imageView
        let vc = TransitionViewController()
        vc.transitioningDelegate = del
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
        
        debugPrint("From View Ip", String(format: "%p___%p", view as! CVarArg, self as! CVarArg))
    }
}



class ImagePickerCell: UICollectionViewCell {
    var imageView: UIImageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        contentView.addSubview(imageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        imageView.frame = contentView.bounds
    }
}
