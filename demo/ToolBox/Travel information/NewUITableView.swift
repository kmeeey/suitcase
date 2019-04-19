//
//  NewUITableView.swift
//  Travel Information
//
//  Created by h on 2019/4/17.
//

import UIKit
class NewUITableview : UITableViewCell{
    var img:UIImageView!//背景图
    var lable:UILabel!//汉字
    var img1:UIImageView!//点赞
    var btn1:UIButton!
    var lable1:UILabel!
    var img2:UIImageView!//阅读
    var btn2:UIButton!
    var lable2:UILabel!
    var img3:UIImageView!//留言
    var btn3:UIButton!
    var lable3:UILabel!
    //获取o屏幕
    let screen = UIScreen.main.bounds
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        img=UIImageView(frame: CGRect(x: 0, y: 0, width: screen.size.width, height: 250))
        
        lable=UILabel(frame: CGRect(x: 70, y: 100, width: screen.size.width, height: 30))
        lable.textColor = UIColor.white
        lable.font = UIFont.boldSystemFont(ofSize: 15)
        
        img1 = UIImageView(frame : CGRect(x: 0, y: img.frame.size.height-40, width: 40, height: 40))
        btn1 = UIButton.init(frame : CGRect(x: 0, y: img.frame.size.height-40, width: 40, height: 40))
        btn1.setImage(UIImage.init(named:"strategy_page_grid_item_feature"), for: UIControl.State.normal);
        btn1.addTarget(self, action: #selector(clickAction1), for: UIControl.Event.touchUpInside);
        
        lable1=UILabel(frame: CGRect(x: 40, y: img.frame.size.height-40, width: 40, height: 40))
        lable1.textColor = UIColor.white
        
        
        img2 = UIImageView(frame : CGRect(x: screen.size.width-160, y: img.frame.size.height-40, width: 40, height: 40))
        btn2 = UIButton.init(frame : CGRect(x: screen.size.width-160, y: img.frame.size.height-40, width: 40, height: 40))
        btn2.setImage(UIImage.init(named:"main_page_table_find_normal"), for: UIControl.State.normal);
        btn2.addTarget(self, action: #selector(clickAction2), for: UIControl.Event.touchUpInside);
        
        lable2=UILabel(frame: CGRect(x: screen.size.width-120, y: img.frame.size.height-40, width: 40, height: 40))
        lable2.textColor = UIColor.white
        
        
        img3 = UIImageView(frame : CGRect(x: screen.size.width-80, y: img.frame.size.height-40, width: 40, height: 40))
        btn3 = UIButton.init(frame : CGRect(x: screen.size.width-80, y: img.frame.size.height-40, width: 40, height: 40))
        btn3.setImage(UIImage.init(named:"setting_page_sending_msg_icon"), for: UIControl.State.normal);
        btn3.addTarget(self, action: #selector(clickAction3), for: UIControl.Event.touchUpInside);
        
        lable3=UILabel(frame: CGRect(x: screen.size.width-40, y: img.frame.size.height-40, width: 40, height: 40))
        lable3.textColor = UIColor.white
        
        
        contentView.addSubview(img)
        contentView.addSubview(lable)
        contentView.addSubview(btn1)
        contentView.addSubview(lable1)
        contentView.addSubview(btn2)
        contentView.addSubview(lable2)
        contentView.addSubview(btn3)
        contentView.addSubview(lable3)
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
    @objc func clickAction1(){
        print("点赞 ")
        
        
    }
    @objc func clickAction2(){
        print("阅读 ")
    }
    @objc func clickAction3(){
        print("评论")
    }
}
