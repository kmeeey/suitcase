//
//  MyCollectionViewCell.swift
//  demo
//
//  Created by 郑学习 on 2019/4/22.
//  Copyright © 2019 com.niit.ios. All rights reserved.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {
    var myImageView : UIImageView?
    var myLable : UILabel?
    
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initUI()
    }
    func initUI(){
        myImageView = UIImageView(frame:CGRect.init(x: 22 ,y: 15, width: 80, height: 80))
        
        self.contentView.addSubview(myImageView!)
        
        myLable = UILabel(frame:CGRect.init(x: 0, y: 15+80, width: width/3, height: 20))
        myLable?.textAlignment = .center
        myLable?.font = UIFont.systemFont(ofSize: 11)
        
        self.contentView.addSubview(myLable!)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

