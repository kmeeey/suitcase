//
//  NextCell.swift
//  demo
//
//  Created by niit97 on 2019/4/21.
//  Copyright © 2019 com.niit.ios. All rights reserved.
//

import UIKit

class NextCell: UITableViewCell {
    
    var icon1Imv:UIImageView!    // 景点图片
    var spotsLabel:UILabel!      // 景点名
    var hotImv:UIImageView!  // 热度
    var distanceLabel:UILabel!       // 距离
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        // 景点图片
        icon1Imv = UIImageView(frame: CGRect(x: 10, y: 10, width: 87, height: 77))
        icon1Imv.layer.masksToBounds = true
        
        // 景点名
        spotsLabel = UILabel(frame: CGRect(x: 105, y: 10, width: 300, height: 15))
        spotsLabel.textColor = UIColor.black
        spotsLabel.font = UIFont.boldSystemFont(ofSize: 13)
        spotsLabel.textAlignment = .left
        
        // 热度
        hotImv = UIImageView(frame: CGRect(x: 105 - 5, y: 30, width: 120, height: 20))
        hotImv.layer.masksToBounds = true
        
        // 距离
        distanceLabel = UILabel(frame: CGRect(x: 105, y: 75, width: 50, height: 13))
        distanceLabel.textColor = UIColor.gray
        distanceLabel.font = UIFont.systemFont(ofSize: 13)
        distanceLabel.textAlignment = .left
        
        contentView.addSubview(icon1Imv)
        contentView.addSubview(spotsLabel)
        contentView.addSubview(hotImv)
        contentView.addSubview(distanceLabel)
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

