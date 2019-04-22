//
//  NextCell.swift
//  demo
//
//  Created by 郑学习 on 2019/4/22.
//  Copyright © 2019 com.niit.ios. All rights reserved.
//

import UIKit

class CurrddencyCell: UITableViewCell {
    
    let width:CGFloat = UIScreen.main.bounds.width
    
    var currddencyLabel:UILabel!      // 钱
    var currddencyabbreviationLabel:UILabel!     //
    var moneyImv:UIImageView!    // 
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        //国家图标
        moneyImv = UIImageView(frame: CGRect(x: 20, y: 25, width: 57, height: 40))
        moneyImv.layer.masksToBounds = true
        
        
        // 货币名称
        currddencyLabel = UILabel(frame: CGRect(x: 74, y: 20, width: 100, height: 50))
        currddencyLabel.textColor = UIColor.black
        currddencyLabel.font = UIFont.boldSystemFont(ofSize: 21)
        currddencyLabel.textAlignment = .center
        
        // 货币缩写
        currddencyabbreviationLabel = UILabel(frame: CGRect(x: width-60, y: 25, width: 50, height: 40))
        currddencyabbreviationLabel.textColor = UIColor.black
        currddencyabbreviationLabel.font = UIFont.systemFont(ofSize: 22)
        currddencyabbreviationLabel.textAlignment = .center
        
        
        
        contentView.addSubview(moneyImv)
        contentView.addSubview(currddencyabbreviationLabel)
        contentView.addSubview(currddencyLabel)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
