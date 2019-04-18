//
//  Mine.swift
//  demo
//
//  Created by niit_099 on 2019/4/15.
//  Copyright © 2019 com.niit.ios. All rights reserved.
//

import UIKit
class Mine : UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor =  colorLiteral(red: 0.9461315274, green: 0.9407240748, blue: 0.9711033702, alpha: 1);
    }
    override func loadView() {
        super.loadView()
        let image_view = UIImageView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 200))
        //        image_view.image = UIImage.init(named: "")
        image_view.image = UIImage.init(named: "main_page_top_night_bg")
        self.view.addSubview(image_view)
        
        let title = UITextView(frame: CGRect(x: (self.view.frame.width - 150)/2, y: 64, width: 150, height: 30))
        title.text = "欢迎使用「旅行箱」"
        title.font = UIFont.systemFont(ofSize: 15)
        title.textAlignment = .center
        title.backgroundColor = .clear
        image_view.addSubview(title)
        
        let setting = UIButton(frame: CGRect(x: title.frame.origin.x + title.frame.width + 30, y: 44, width: 25, height: 25))
        setting.setImage(UIImage.init(named: "main_page_griditem_setting"), for: .normal)
        image_view.addSubview(setting)
        
        let mail = UIButton(frame: CGRect(x: title.frame.origin.x + title.frame.width + 80, y: 44, width: 25, height: 25))
        mail.setImage(UIImage.init(named: "main_page_griditem_setting"), for: .normal)
        image_view.addSubview(mail)
        
        let btn_login = UIButton(frame: CGRect(x: (self.view.frame.width - 50)/2 - 40, y:title.frame.origin.y + title.frame.height + 10, width: 50, height: 30))
        btn_login.backgroundColor = .clear
        btn_login.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        btn_login.setTitle("登录", for: .normal)
        btn_login.setTitleColor(.black, for: .normal)
        image_view.addSubview(btn_login)
        
        let btn_reg = UIButton(frame: CGRect(x: (self.view.frame.width - 50)/2 + 40 , y: title.frame.origin.y + title.frame.height + 10, width: 50, height: 30))
        btn_reg.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        btn_reg.setTitle("注册", for: .normal)
        btn_reg.setTitleColor(.black, for: .normal)
        btn_reg.backgroundColor = .clear
        image_view.addSubview(btn_reg)
        
        let view = UIView(frame: CGRect(x: 0, y: image_view.frame.origin.y + image_view.frame.height - 55, width: self.view.frame.width, height: 55))
        view.backgroundColor =  colorLiteral(red: 0.6141280532, green: 0.5097174644, blue: 0.5248040557, alpha: 1)
        view.alpha = 0.5
        image_view.addSubview(view)
        let btn_travel = UIButton(frame: CGRect(x: (view.frame.width - 30)/4, y: 10, width: 30, height: 30))
        btn_travel.setImage(UIImage.init(named: ""), for: .normal)
        btn_travel.setImage(UIImage.init(named: ""), for: .highlighted)
        let travel = UITextView(frame: CGRect(x: btn_travel.frame.origin.x, y: btn_travel.frame.origin.y + btn_travel.frame.height, width: 30, height: 30))
        travel.text = "游记"
        travel.textColor = .white
        travel.addSubview(travel)
        
        
    }
    
    
    
}
