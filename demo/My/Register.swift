//
//  ViewController.swift
//  translate
//
//  Created by niit97 on 2019/4/1.
//  Copyright © 2019 niit97. All rights reserved.
//

import UIKit

class Register: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = #colorLiteral(red: 0.9410971999, green: 0.9412290454, blue: 0.9410556555, alpha: 1)
        // Do any additional setup after loading the view, typically from a nib.
        let screen = UIScreen.main.bounds
        
        //1. 创建NavigationBar
        let navigationBarHeight: CGFloat = 44//默认高度
        let navigationBar = UINavigationBar(frame: CGRect(x: 0, y: 30, width: screen.size.width, height: navigationBarHeight))
        //设置按钮
        let leftbtn =  UIBarButtonItem(title:"返回", style:UIBarButtonItem.Style.plain, target: self, action:nil)
        let rightbtn = UIBarButtonItem(title: "登录", style: .plain, target: self, action: nil)
        //按钮文字颜色
        leftbtn.tintColor = UIColor.red
        rightbtn.tintColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        self.navigationItem.leftBarButtonItem = leftbtn
        //设置图片按钮
        //leftbtn.image = UIImage(named: "arrow")
        let navigationItem = UINavigationItem(title:"注册会员")
        navigationItem.leftBarButtonItem = leftbtn
        navigationItem.rightBarButtonItem = rightbtn
        navigationBar.items = [navigationItem]
        self.view.addSubview(navigationBar)
        
        let icon1 = UIImageView(frame: CGRect.init(x: 50, y: 0, width: 50, height: 50))
        let image1 = UIImage(named: "UC_PhoneNumber_Icon_29x29_@2x")
        icon1.image = image1
        
        let icon2 = UIImageView(frame: CGRect.init(x: 50, y: 0, width: 50, height: 50))
        let image2 = UIImage(named: "UC_Register_Icon_29x29_@2x")
        icon2.image = image2
        
        let icon3 = UIImageView(frame: CGRect.init(x: 50, y: 0, width: 50, height: 50))
        let image3 =  UIImage(named: "UC_PassWord_Icon_29x29_@2x")
        icon3.image = image3
        
        let button = UIButton(frame:CGRect(x:0, y:0, width:100, height:40))
        button.layer.borderWidth = 1
        button.layer.cornerRadius = 5
        button.layer.masksToBounds = true
        button.setTitle("获取验证码", for:.normal) //普通状态下的文字
        button.setTitleColor(UIColor.red, for: .normal) //普通状态下文字的颜色
        button.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .highlighted) //触摸状态下文字的颜色
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15) //按钮文字大小
        
        
        let username  = UITextField.init(frame: CGRect.init(x: 0, y:  120, width: self.view.bounds.size.width, height: 45))
        
        username.borderStyle =  .none
        //当文本超出文字框宽度时，自动调整文字大小，默认是以省略号代替
        username.adjustsFontSizeToFitWidth = true
        username.minimumFontSize = 10
        //右侧的x关闭按钮
        username.clearButtonMode = .always
        username.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        //左侧图片显示
        username.leftView = icon1
        username.leftViewMode = .always
        username.placeholder = "手机号码"
        //设置文本框关联的键盘类型
        //username.keyboardType = UIKeyboardType.numberPad
        //使文本框在界面打开时就获取焦点，并弹出键盘
        //username.becomeFirstResponder()
        //当文本框失去焦点，收回键盘
        //username.resignFirstResponder()
        self.view.addSubview(username)
        
        let psw = UITextField.init(frame: CGRect.init(x:0, y: username.frame.origin.y + username.frame.size.height, width: self.view.frame.width, height: 50))
        psw.borderStyle = .none
        psw.placeholder = "验证码"
        psw.backgroundColor =  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        psw.leftViewMode = .always
        psw.leftView = icon2
        psw.rightView = button
        psw.rightViewMode = .always
        self.view.addSubview(psw)
        
        
        let apsw = UITextField.init(frame: CGRect.init(x: 0, y: psw.frame.origin.y + psw.frame.size.height  , width: self.view.frame.width, height: 50))
        apsw.isSecureTextEntry = true
        //右侧的x关闭按钮
        apsw.clearButtonMode = .always
        apsw.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        apsw.placeholder = "输入密码"
        apsw.leftView =  icon3
        apsw.leftViewMode = .always
        apsw.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.view.addSubview(apsw)
        
        
        let runle1 =  UIView.init(frame: CGRect.init(x: 55, y:username.frame.origin.y + username.frame.size.height , width: self.view.bounds.width, height: 1))
        runle1.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        self.view.addSubview(runle1)
        
        let runle2 =  UIView.init(frame: CGRect.init(x: 55, y:
            psw.frame.origin.y + psw.frame.size.height, width: view.bounds.width, height: 1))
        runle2.backgroundColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        self.view.addSubview(runle2)
        
    }
    
    
}
