//
//  Mine.swift
//  demo
//
//  Created by niit_099 on 2019/4/17.
//  Copyright © 2019 com.niit.ios. All rights reserved.
//

import UIKit
class Mine : UIViewController{
    var btn_travel = UIButton()
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor =  #colorLiteral(red: 0.9323816895, green: 0.9372828603, blue: 0.9544377923, alpha: 1);
        let image_view = UIImageView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 200))
        //        image_view.image = UIImage.init(named: "")
        image_view.image = UIImage.init(named: "login_page_fragment_center_top.png")
        image_view.isUserInteractionEnabled = true
        self.view.addSubview(image_view)
        
        
        //欢迎使用
        let title = UITextView(frame: CGRect(x: (self.view.frame.width - 150)/2, y: 54, width: 150, height: 30))
        title.text = "欢迎使用「旅行箱」"
        title.font = UIFont.systemFont(ofSize: 15)
        title.textAlignment = .center
        title.backgroundColor = .clear
        image_view.addSubview(title)
        //设置
        let setting = UIButton(frame: CGRect(x: title.frame.origin.x + title.frame.width + 30, y: 44, width: 25, height: 25))
        setting.setImage(UIImage.init(named: "main_page_griditem_setting"), for: .normal)
        image_view.addSubview(setting)
        //邮件
        let mail = UIButton(frame: CGRect(x: title.frame.origin.x + title.frame.width + 80, y: 44, width: 25, height: 25))
        mail.setImage(UIImage.init(named: "mail"), for: .normal)
        image_view.addSubview(mail)
        
        //登录
        let btn_login = UIButton(frame: CGRect(x: (self.view.frame.width - 50)/2 - 40, y:title.frame.origin.y + title.frame.height + 10, width: 50, height: 25))
        btn_login.backgroundColor = .clear
        btn_login.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        btn_login.titleLabel?.textAlignment = .center
        btn_login.setTitle("登录", for: .normal)
        btn_login.setTitleColor(.black, for: .normal)
        btn_login.addTarget(self, action: #selector(loginClick), for: .touchDown)
        image_view.addSubview(btn_login)
        //登录虚线
        let lineDash = UIImageView(frame: CGRect(x: btn_login.frame.origin.x + 5, y: btn_login.frame.origin.y + btn_login.frame.height, width: 40, height: 1))
        lineDash.image = UIImage.init(named: "login_page_fragment_center_line")
        image_view.addSubview(lineDash)
        //注册
        let btn_reg = UIButton(frame: CGRect(x: (self.view.frame.width - 50)/2 + 40 , y: title.frame.origin.y + title.frame.height + 10, width: 50, height: 25))
        btn_reg.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        btn_reg.setTitle("注册", for: .normal)
        btn_reg.setTitleColor(.black, for: .normal)
        btn_reg.backgroundColor = .clear
        btn_reg.titleLabel?.textAlignment = .center
        btn_reg.addTarget(self, action: #selector(RegClick), for: .touchDown)
        image_view.addSubview(btn_reg)
        //注册虚线
        let lineDash1 = UIImageView(frame: CGRect(x: btn_reg.frame.origin.x + 5, y: btn_reg.frame.origin.y + btn_reg.frame.height, width: 40, height: 1))
        lineDash1.image = UIImage.init(named: "login_page_fragment_center_line")
        image_view.addSubview(lineDash1)
        let view = UIView(frame: CGRect(x: 0, y: image_view.frame.origin.y + image_view.frame.height - 55, width: self.view.frame.width, height: 55))
        view.backgroundColor =  #colorLiteral(red: 0.6704113483, green: 0.532043159, blue: 0.5259997845, alpha: 1)
        view.alpha = 0.65
        image_view.addSubview(view)
        //游记
        btn_travel = UIButton(frame: CGRect(x: 0, y: 10, width: (self.view.frame.width)/4, height: 25))
        btn_travel.setImage(UIImage.init(named: "parachute_white"), for: .normal)
        btn_travel.addTarget(self, action: #selector(travelClick), for: UIControl.Event.touchDown)
        view.addSubview(btn_travel)
        
        let travel = UILabel(frame: CGRect(x: btn_travel.frame.origin.x, y: btn_travel.frame.origin.y + btn_travel.frame.height, width: (self.view.frame.width)/4, height:15))
        travel.text = "游记"
        travel.font = UIFont.systemFont(ofSize: 12)
        travel.backgroundColor = .clear
        travel.textAlignment = .center
        travel.textColor = .white
        view.addSubview(travel)
        //分割线1
        let line = UIView(frame: CGRect(x: btn_travel.frame.origin.x + btn_travel.frame.width, y: (view.frame.height - 30 )/2, width: 1, height: 30))
        line.backgroundColor = .white
        line.alpha = 0.5
        view.addSubview(line)
        //账单
        let btn_bill = UIButton(frame: CGRect(x:line.frame.origin.x + line.frame.width , y: 10, width: (self.view.frame.width)/4, height: 25))
        btn_bill.setImage(UIImage.init(named: "parachute_white"), for: .normal)
        btn_bill.addTarget(self, action: #selector(travelClick), for: UIControl.Event.touchDown)
        view.addSubview(btn_bill)
        
        let bill = UILabel(frame: CGRect(x: btn_bill.frame.origin.x, y: btn_bill.frame.origin.y + btn_bill.frame.height, width: (self.view.frame.width)/4, height:15))
        bill.text = "账单"
        bill.font = UIFont.systemFont(ofSize: 12)
        bill.backgroundColor = .clear
        bill.textAlignment = .center
        bill.textColor = .white
        view.addSubview(bill)
        //分割线2
        let line2 = UIView(frame: CGRect(x: btn_bill.frame.origin.x + btn_bill.frame.width, y: (view.frame.height - 30 )/2, width: 1, height: 30))
        line2.backgroundColor = .white
        line2.alpha = 0.5
        view.addSubview(line2)
        //收藏
        let btn_collect = UIButton(frame: CGRect(x:line2.frame.origin.x + line2.frame.width , y: 10, width: (self.view.frame.width)/4, height: 25))
        btn_collect.setImage(UIImage.init(named: "parachute_white"), for: .normal)
        btn_collect.addTarget(self, action: #selector(travelClick), for: UIControl.Event.touchDown)
        view.addSubview(btn_collect)
        
        let collect = UILabel(frame: CGRect(x: btn_collect.frame.origin.x, y: btn_collect.frame.origin.y + btn_collect.frame.height, width: (self.view.frame.width)/4, height:15))
        collect.text = "收藏"
        collect.font = UIFont.systemFont(ofSize: 12)
        collect.backgroundColor = .clear
        collect.textAlignment = .center
        collect.textColor = .white
        view.addSubview(collect)
        
        //分割线3
        let line3 = UIView(frame: CGRect(x: btn_collect.frame.origin.x + btn_collect.frame.width, y: (view.frame.height - 30 )/2, width: 1, height: 30))
        line3.backgroundColor = .white
        line3.alpha = 0.5
        view.addSubview(line3)
        
        //关注
        let btn_attention = UIButton(frame: CGRect(x:line3.frame.origin.x + line3.frame.width , y: 10, width: (self.view.frame.width)/4, height: 25))
        btn_attention.setImage(UIImage.init(named: "parachute_white"), for: .normal)
        btn_attention.addTarget(self, action: #selector(travelClick), for: UIControl.Event.touchDown)
        view.addSubview(btn_attention)
        
        let attention = UILabel(frame: CGRect(x: btn_attention.frame.origin.x, y: btn_attention.frame.origin.y + btn_attention.frame.height, width: (self.view.frame.width)/4, height:15))
        attention.text = "关注"
        attention.font = UIFont.systemFont(ofSize: 12)
        attention.backgroundColor = .clear
        attention.textAlignment = .center
        attention.textColor = .white
        view.addSubview(attention)
        
        
        
        //保险订单
        let btn_insurance = UIButton(frame: CGRect(x: 0, y: view.frame.origin.y + view.frame.height + 20, width: self.view.frame.width, height: 50))
        btn_insurance.backgroundColor = .white
        
        self.view.addSubview(btn_insurance)
        
        let insurance = UILabel(frame: CGRect(x: 10, y: (btn_insurance.frame.height - 30)/2, width: 80, height: 30))
        insurance.text = "保险订单"
        insurance.font = UIFont.systemFont(ofSize: 16)
        btn_insurance.addSubview(insurance)
        
        let img1 = UIImageView(frame: CGRect(x:btn_insurance.frame.width - 25, y:(btn_insurance.frame.height - 25)/2, width: 20, height:30))
        img1.image = UIImage.init(named: "insurance_webview_go_foward_default")
        btn_insurance.addSubview(img1)
        //记账本+行程账单
        let view2 = UIView(frame: CGRect(x: 0, y: btn_insurance.frame.origin.y + btn_insurance.frame.height + 20, width: self.view.frame.width, height: 50))
        view2.backgroundColor = .white
        self.view.addSubview(view2)
        
        let note = UILabel(frame: CGRect(x: 10, y: (view2.frame.height - 30)/2, width: 140, height: 30))
        note.text = "记账本+行程账单"
        note.font = UIFont.systemFont(ofSize: 16)
        view2.addSubview(note)
        
        let sync = UILabel(frame: CGRect(x: note.frame.origin.x + note.frame.width + 5, y: (view2.frame.height - 30)/2, width: 60, height: 30))
        sync.text = "已同步"
        sync.textAlignment = .center
        sync.textColor = #colorLiteral(red: 0.4675745964, green: 0.7651544213, blue: 0.6870430112, alpha: 1)
        sync.font = UIFont.systemFont(ofSize: 14)
        sync.backgroundColor = .clear
        sync.layer.borderColor = #colorLiteral(red: 0.4675745964, green: 0.7651544213, blue: 0.6870430112, alpha: 1)
        sync.layer.cornerRadius = 5
        sync.layer.borderWidth = 2
        view2.addSubview(sync)
        
        let btn_sync = UIButton(frame: CGRect(x:view2.frame.width - 110, y:(view2.frame.height - 40)/2, width: 90, height:40))
        btn_sync.backgroundColor = #colorLiteral(red: 0.4675745964, green: 0.7651544213, blue: 0.6870430112, alpha: 1)
        btn_sync.setTitle("同步", for: .normal)
        btn_sync.setTitleColor(.white, for: .normal)
        btn_sync.titleLabel?.textAlignment = .center
        btn_sync.layer.cornerRadius = 5
        view2.addSubview(btn_sync)
        //分割线
        let line4 = UIView(frame: CGRect(x: note.frame.origin.x, y: view2.frame.origin.y + view2.frame.height , width: self.view.frame.width, height: 1))
        line4.backgroundColor = #colorLiteral(red: 0.9107275605, green: 0.9056703448, blue: 0.9143057466, alpha: 1)
        self.view.addSubview(line4)
        //导出Excel
        let export = UILabel(frame: CGRect(x: 0, y: view2.frame.origin.y + view2.frame.height + 1, width: self.view.frame.width, height: 50))
        export.backgroundColor = .white
        self.view.addSubview(export)
        
        let btn_export = UIButton(frame: CGRect(x:export.frame.width - 110, y:(export.frame.height - 40)/2, width: 90, height:40))
        btn_export.backgroundColor = #colorLiteral(red: 0.4675745964, green: 0.7651544213, blue: 0.6870430112, alpha: 1)
        btn_export.setTitle("导出Excel", for: .normal)
        btn_export.setTitleColor(.white, for: .normal)
        btn_export.titleLabel?.textAlignment = .center
        btn_export.layer.cornerRadius = 5
        export.addSubview(btn_export)
        
        //行程助手
        let view3 = UIView(frame: CGRect(x: 0, y: export.frame.origin.y + export.frame.height + 20, width: self.view.frame.width, height: 50))
        view3.backgroundColor = .white
        self.view.addSubview(view3)
        
        let tra_ass = UILabel(frame: CGRect(x: 10, y: (view3.frame.height - 30)/2 , width: 80, height: 30))
        tra_ass.text = "行程助手"
        tra_ass.font = UIFont.systemFont(ofSize: 15)
        view3.addSubview(tra_ass)
        
        let sync2 = UILabel(frame: CGRect(x: tra_ass.frame.origin.x + tra_ass.frame.width , y: (view3.frame.height - 30)/2, width: 60, height: 30))
        sync2.text = "未同步"
        sync2.textAlignment = .center
        sync2.textColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        sync2.font = UIFont.systemFont(ofSize: 14)
        sync2.backgroundColor = .clear
        sync2.layer.borderColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        sync2.layer.cornerRadius = 5
        sync2.layer.borderWidth = 2
        view3.addSubview(sync2)
        
        let btn_sync2 = UIButton(frame: CGRect(x:view3.frame.width - 110, y:(view3.frame.height - 40)/2, width: 90, height:40))
        btn_sync2.backgroundColor = #colorLiteral(red: 0.4675745964, green: 0.7651544213, blue: 0.6870430112, alpha: 1)
        btn_sync2.setTitle("同步", for: .normal)
        btn_sync2.setTitleColor(.white, for: .normal)
        btn_sync2.titleLabel?.textAlignment = .center
        btn_sync2.layer.cornerRadius = 5
        view3.addSubview(btn_sync2)
        //分割线
        let line5 = UIView(frame: CGRect(x: tra_ass.frame.origin.x, y: view3.frame.origin.y + view3.frame.height, width: self.view.frame.width, height: 1))
        line5.backgroundColor = #colorLiteral(red: 0.9107275605, green: 0.9056703448, blue: 0.9143057466, alpha: 1)
        self.view.addSubview(line5)
        //全部同步
        let sync_All = UILabel(frame: CGRect(x: 0, y: view3.frame.origin.y + view3.frame.height + 1, width: self.view.frame.width, height: 50))
        sync_All.backgroundColor = .white
        self.view.addSubview(sync_All)
        
        let btn_sync_All = UIButton(frame: CGRect(x:sync_All.frame.width - 110, y:(sync_All.frame.height - 40)/2, width: 90, height:40))
        btn_sync_All.backgroundColor = #colorLiteral(red: 0.4675745964, green: 0.7651544213, blue: 0.6870430112, alpha: 1)
        btn_sync_All.setTitle("全部同步", for: .normal)
        btn_sync_All.setTitleColor(.white, for: .normal)
        btn_sync_All.titleLabel?.textAlignment = .center
        btn_sync_All.layer.cornerRadius = 5
        sync_All.addSubview(btn_sync_All)
        
        
        //使用帮助
        let btn_use_help = UIButton(frame: CGRect(x: 0, y: sync_All.frame.origin.y + sync_All.frame.height + 20, width: self.view.frame.width, height: 50))
        btn_use_help.backgroundColor = .white
        self.view.addSubview(btn_use_help)
        
        let use_help = UILabel(frame: CGRect(x: 10, y: (btn_use_help.frame.height - 30)/2, width: 80, height: 30))
        use_help.text = "使用帮助"
        use_help.font = UIFont.systemFont(ofSize: 16)
        btn_use_help.addSubview(use_help)
        
        let img2 = UIImageView(frame: CGRect(x:btn_use_help.frame.width - 25, y:(btn_use_help.frame.height - 25)/2, width: 20, height:30))
        img2.image = UIImage.init(named: "insurance_webview_go_foward_default")
        btn_use_help.addSubview(img2)
        
    }
    
    override func loadView() {
        super.loadView()
        
    }
    
    @objc func travelClick(){
        btn_travel.setImage(UIImage.init(named: "parachute_black"), for: .highlighted)
    }
    
    @objc func loginClick(){
        let loginConterll  = Login()
        self.present(loginConterll, animated:true)
    }
    @objc func RegClick(){
        let regConterll  = Register()
        self.present(regConterll, animated:true)
    }
    
    
    
    
}
