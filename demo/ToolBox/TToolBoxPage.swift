//
//  ViewController.swift
//  TravelApp
//
//  Created by 郑学习 on 2019/4/1.
//  Copyright © 2019年 niit.edu. All rights reserved.
//

import UIKit

class TToolBoxPage: UIViewController ,UICollectionViewDataSource,UICollectionViewDelegate{
    
    var myCollectionView :UICollectionView!
    var cell:UICollectionViewCell!
    var imageView :UIImageView?
    
    let ScreenHeight = UIScreen.main.bounds.size.height
    let ScreenWidth = UIScreen.main.bounds.size.width
    let cid = "cid"
    override func viewDidLoad() {
        
        self.navigationItem.title = "工具箱"
        
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        //imageview
        imageView = UIImageView(image: UIImage(named: "image1"))
        imageView!.frame = CGRect(x: 0, y: 0, width:ScreenWidth, height:ScreenHeight/3 )
        self.view.addSubview(imageView!)
        
        
        let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        self.myCollectionView = UICollectionView(frame: CGRect.init(x: 0, y: ScreenHeight/3, width: ScreenWidth, height: ScreenHeight-ScreenHeight/3-84), collectionViewLayout: layout)
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
        cell.layer.borderWidth = 0.1
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print("index is \(indexPath.row)");
        
    }
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
    }
    
}







