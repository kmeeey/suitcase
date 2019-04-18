//
//  NewTableViewCell.swift
//  demo
//
//  Created by Mac on 2019/4/17.
//  Copyright © 2019 com.niit.ios. All rights reserved.
//

import UIKit

class NewTableViewCell: UITableViewCell {
    
    let width:CGFloat = UIScreen.main.bounds.width
    var icon:UIImageView! //背景
    var label:UILabel!   //标题
    var icon1:UIImageView! //头像
    var label2:UILabel!  //点赞数目
    var label3:UILabel!   //观看人数
    var label4:UILabel!    // 评论人数
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        //背景
        icon =  UIImageView(frame: CGRect(x: 0, y: 0, width: width, height: 230))
        
        //文字
        label = UILabel(frame: CGRect(x: 60, y: (icon.frame.size.height - 30)/2, width: width, height: 30))
        label.textColor = .white
        label.font  = UIFont.boldSystemFont(ofSize: 20)
        
        //头像
        icon1 = UIImageView(frame: CGRect(x: width - 70, y: 10, width: 60, height: 60))
        //设置圆角
        icon1.layer.masksToBounds = true
        icon1.layer.cornerRadius = 30.0
        
        let icon2 = UIImageView(frame: CGRect.init(x:10 , y: 230 - 40, width: 30, height: 30))
        let image2 = UIImage(named: "dianzan")
        icon2.image = image2
        
        let icon3 =  UIImageView(frame: CGRect.init(x: width - 180, y: icon2.frame.origin.y, width: 30, height: 30))
        let image3 = UIImage(named: "main_page_table_find_normal")
        icon3.image = image3
        
        let icon4 = UIImageView(frame: CGRect.init(x: width - 100, y: icon2.frame.origin.y, width: 30, height: 30))
        let image4 = UIImage(named: "pinglun")
        icon4.image = image4
        
        
        label2 = UILabel(frame: CGRect(x: icon2.frame.size.width + icon2.frame.origin.x, y:  icon2.frame.origin.y , width: 30, height: 30))
        label2.textColor = .white
        label2.font = UIFont.boldSystemFont(ofSize: 13)
        
        label3 = UILabel(frame: CGRect(x: width - 150, y:  icon2.frame.origin.y , width: 30, height: 30))
        label3.textColor = .white
        label3.font = UIFont.boldSystemFont(ofSize: 13)
        
        
        label4 = UILabel(frame: CGRect(x: width - 50, y:  icon2.frame.origin.y , width: 30, height: 30))
        label4.textColor = .white
        label4.font = UIFont.boldSystemFont(ofSize: 13)
        
        
        
        contentView.addSubview(icon)
        contentView.addSubview(icon1)
        contentView.addSubview(icon3)
        contentView.addSubview(icon4)
        contentView.addSubview(icon2)
        contentView.addSubview(label)
        contentView.addSubview(label2)
        contentView.addSubview(label3)
        contentView.addSubview(label4)
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
