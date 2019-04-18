//
//  login.swift
//  demo
//
//  Created by niit_099 on 2019/4/15.
//  Copyright © 2019 com.niit.ios. All rights reserved.
//
import UIKit

class Login: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //        self.view.backgroundColor =  #colorLiteral(red: 0.9591775537, green: 0.9593380094, blue: 0.9591564536, alpha: 1)
        let screen = UIScreen.main.bounds
        
        //1. 创建NavigationBar
        let navigationBarHeight: CGFloat = 44//默认高度
        let navigationBar = UINavigationBar(frame: CGRect(x: 0, y: 30 , width: screen.size.width, height: navigationBarHeight))
        let leftbtn = UIBarButtonItem(title:"返回",style:.plain,target: self,action: #selector(back(_:)))
        let rightbtn = UIBarButtonItem(title:"登录",style:.plain,target: self,action: #selector(add(_:)))
        
        leftbtn.tintColor = UIColor.orange
        let navigationItem = UINavigationItem(title:"会员登陆")
        navigationItem.leftBarButtonItem = leftbtn
        navigationItem.rightBarButtonItem = rightbtn
        navigationBar.items = [navigationItem]
        self.view.addSubview(navigationBar)
        //头像
        let icon = UIImageView.init(frame: CGRect.init(x:(self.view.frame.width - 50)/2, y: navigationBar.frame.origin.y + navigationBar.frame.size.height + 40, width: 50, height: 50))
        icon.image = UIImage.init(named: "login_page_fragment_information_head_icon")
        self.view.addSubview(icon)
        //手机号图片
        let imgNum = UIImageView(frame: CGRect(x: 50, y: 0, width: 40, height: 35))
        //        imgview.image = UIImage.init(named: "audi.jpg");
        imgNum.image = UIImage.init(named: "login_page_fragment_register_phone_icon.png")
        self.view.addSubview(imgNum);
        //密码图片
        let imgPsw = UIImageView(frame: CGRect(x: 50, y: 0, width: 40, height: 35))
        //        imgview.image = UIImage.init(named: "audi.jpg");
        imgPsw.image = UIImage.init(named: "login_page_fragment_register_password_icon.png")
        self.view.addSubview(imgPsw);
        //手机号输入
        let username = UITextField(frame: CGRect(x: 0, y: icon.frame.origin.y + icon.frame.size.height + 20, width: self.view.bounds.size.width, height: 45));
        username.backgroundColor = UIColor.white;
        username.placeholder = "手机号码";
        username.leftView = imgNum
        username.leftViewMode = UITextField.ViewMode.always
        username.textColor = UIColor.black;
        self.view.addSubview(username);
        //密码输入
        let password = UITextField(frame: CGRect(x: 0, y: username.frame.origin.y + username.frame.size.height , width: self.view.bounds.size.width, height: 45));
        password.backgroundColor = UIColor.white;
        password.placeholder = "密码";
        password.textColor = UIColor.black;
        password.leftView = imgPsw
        password.leftViewMode = UITextField.ViewMode.always
        password.isSecureTextEntry = true
        self.view.addSubview(password);
        //忘记密码
        let btnForget = UIButton(frame: CGRect(x: 5, y:password.frame.origin.y + password.frame.height + 20 , width: 100, height: 30))
        btnForget.setTitle("忘记密码", for: UIControl.State.normal)
        btnForget.backgroundColor = self.view.backgroundColor
        btnForget.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        //        btnForget.setTitleColor( #colorLiteral(red: 0.4756349325, green: 0.4756467342, blue: 0.4756404161, alpha: 1), for: UIControl.State.normal)
        btnForget.addTarget(self, action: #selector(ForgetPassWord), for: UIControl.Event.touchUpInside)
        self.view.addSubview(btnForget)
        
        //注册账号
        let btnReg = UIButton(frame: CGRect(x:btnForget.frame.origin.x + 250, y:btnForget.frame.origin.y , width: 100, height: 30))
        btnReg.setTitle("注册新会员", for: UIControl.State.normal)
        btnReg.backgroundColor = self.view.backgroundColor
        btnReg.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        //        btnReg.setTitleColor(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1), for: UIControl.State.normal)
        btnReg.addTarget(self, action: #selector(Register), for: UIControl.Event.touchUpInside)
        self.view.addSubview(btnReg)
        //分割线
        let cutline = UIView(frame: CGRect(x: 45, y: username.frame.origin.y + username.frame.size.height, width:self.view.bounds.width, height: 1))
        //        cutline.backgroundColor = #colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)
        self.view.addSubview(cutline)
        //提示社交平台登录
        let tipLine = UILabel(frame: CGRect(x:(self.view.frame.width - 40 - 300)/2 + 20, y: self.view.frame.height - btnForget.frame.origin.y - btnForget.frame.height + 200 , width: 300, height: 50))
        tipLine.text = "———— 使用社交账号登录 ————"
        tipLine.textColor = UIColor.gray
        tipLine.textAlignment = .center
        self.view.addSubview(tipLine)
        
        //社交平台
        //微博
        let sina = UIButton.init(frame:CGRect.init(x:(self.view.frame.width - 50)/4, y:tipLine.frame.origin.y + tipLine.frame.height  , width: 40, height: 40))
        sina.setBackgroundImage(UIImage(named:"login_page_weibo"), for: UIControl.State.normal)
        self.view.addSubview(sina)
        //QQ
        let QQ = UIButton.init(frame:CGRect.init(x:(self.view.frame.width - 50)/3 + 60, y:tipLine.frame.origin.y + tipLine.frame.height  , width: 40, height: 40))
        QQ.setBackgroundImage(UIImage(named:"login_page_qq"), for: UIControl.State.normal)
        self.view.addSubview(QQ)
        //WeChat
        let WeChat = UIButton.init(frame:CGRect.init(x:(self.view.frame.width - 50)/2 + 90, y:tipLine.frame.origin.y + tipLine.frame.height  , width: 40, height: 40))
        WeChat.setBackgroundImage(UIImage(named:"login_page_wechat"), for: UIControl.State.normal)
        self.view.addSubview(WeChat)
        
    }
    
    
    @objc func action(bt1:UIButton){
        print("点击了这个按钮")
    }
    @objc func ForgetPassWord(){
        print("我还没写")
    }
    @objc func Register(){
        print("这个我也没写")
    }
    @objc func back(_ sender: AnyObject){
        let mineConteller = Mine()
        self.present(mineConteller, animated: true)
    }
    
    @objc func add(_ sender: AnyObject){
        
    }
    
}


