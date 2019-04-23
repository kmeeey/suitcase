//
//  NewTableView.swift
//  demo
//
//  Created by abc on 2019/4/19.
//  Copyright © 2019 com.niit.ios. All rights reserved.
//

import UIKit

class NewTableView: UITableViewCell {
    
    let width: CGFloat = UIScreen.main.bounds.width
    var background: UIImageView! //背景
    var label: UILabel! //添加标题
    var label1: UILabel!  //价格
    var label2: UILabel! //行程天数
    var label3: UILabel! //景点数目
    var label4: UILabel! //记事数目
    var label5: UILabel! //照片数目
    var label6: UILabel! //目的地和出发地
    var label7: UILabel! //价格标志
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        self.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        // 背景
        background = UIImageView(frame: CGRect(x: 8, y: 8, width: width-16, height: 180))
        
        //白条
        let icon1 = UIImageView(frame: CGRect(x: 8, y: background.frame.size.height + 8, width: width - 16, height: 35))
        
        let image1 = UIImage(named: "translate_press")
        icon1.image = image1
        
        //出发地和目的地
        label6 = UILabel(frame: CGRect(x: 20, y: 195, width: 60, height: 20))
        label6.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        label6.font = UIFont.boldSystemFont(ofSize: 11)
        
        //更多图标
        let icon2 = UIImageView(frame: CGRect(x: 340, y: 190, width: 22, height: 22))
        let image2 = UIImage(named: "write")
        icon2.image = image2

        //添加标题
        label = UILabel(frame: CGRect(x: 20, y: (background.frame.size.height - 30)/6.5, width: 120, height: 30))
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 20)
        
        //价格
        label1 = UILabel(frame: CGRect(x: 310, y: 8, width: 60, height: 60))
        label1.textColor = .white
        
        //价格标志
        label7 = UILabel(frame: CGRect(x: 300, y: 8, width: 60, height: 60))
        label7.text = "¥"
        label7.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        //行程天数
        label2 = UILabel(frame: CGRect(x: 20, y: 60, width: 60, height: 20))
        label2.textColor = .white
        label2.font = UIFont.boldSystemFont(ofSize: 15)
        
        //天数图标
        let icon3 = UIImageView(frame: CGRect(x: 85, y: 58, width: 25, height: 25))
        let image3 = UIImage(named: "strategy_page_listitem_share_normal")
        icon3.image = image3
        
        //景点数目
        label3 = UILabel(frame: CGRect(x: 20, y: 160, width: 70, height: 12 ))
        label3.textColor = .white
        label3.font = UIFont.boldSystemFont(ofSize: 15)
        
        //记事数目
        label4 = UILabel(frame: CGRect(x: 100, y: 160, width: 70, height: 12 ))
        label4.textColor = .white
        label4.font = UIFont.boldSystemFont(ofSize: 15)
        
        //照片数目
        label5 = UILabel(frame: CGRect(x: 180, y: 160, width: 70, height: 12))
        label5.textColor = .white
        label5.font = UIFont.boldSystemFont(ofSize: 15)
        
        

        contentView.addSubview(background)
        contentView.addSubview(icon1)
        contentView.addSubview(icon2)
        contentView.addSubview(icon3)
        contentView.addSubview(label)
        contentView.addSubview(label1)
        contentView.addSubview(label2)
        contentView.addSubview(label3)
        contentView.addSubview(label4)
        contentView.addSubview(label5)
        contentView.addSubview(label6)
        contentView.addSubview(label7)
        
        
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
    
    
    
    

