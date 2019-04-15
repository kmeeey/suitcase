//
//  MyCollectionView.swift
//  TravelApp
//
//  Created by 郑学习 on 2019/4/10.
//  Copyright © 2019 niit.edu. All rights reserved.
//

import UIKit

class MyCollectionView: UIViewController ,UICollectionViewDataSource,UICollectionViewDelegate {
    
    var myCollectionView :UICollectionView!
    var cell:UICollectionViewCell!
    
    let cid = "cid"
    let ScreenHeight = UIScreen.main.bounds.size.height
    let ScreenWidth = UIScreen.main.bounds.size.width
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        self.myCollectionView = UICollectionView(frame: CGRect.init(x: 0, y: ScreenHeight/2, width: ScreenWidth, height: ScreenHeight-ScreenHeight/2-84), collectionViewLayout: layout)
        layout.itemSize = CGSize(width: (ScreenWidth-30)/3, height: ScreenWidth/3)
        
        self.myCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cid)
        self.myCollectionView.dataSource = self
        self.myCollectionView.delegate = self
        self.view.addSubview(myCollectionView)
    
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        cell = collectionView.dequeueReusableCell(withReuseIdentifier: cid, for: indexPath)
        
        cell.backgroundColor = .red
        cell.layer.borderWidth = 10
        return cell
    }
    

}
