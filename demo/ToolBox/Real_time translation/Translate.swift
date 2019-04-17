//
//  Translate.swift
//  demo
//
//  Created by niit97 on 2019/4/15.
//  Copyright © 2019 com.niit.ios. All rights reserved.
//

import UIKit

class Translate: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        //设置导航栏整体背景颜色
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.backgroundColor = UIColor.white
        
        let leftItemButton = UIButton.init(frame: CGRect.init(x:20,y:20+44,width:
            60,height: 40))
        leftItemButton.setTitle("返回", for: .normal)
        leftItemButton.setTitleColor(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1), for: .normal)
        leftItemButton.setBackgroundImage(UIImage(named: "Image"), for: .normal)
        leftItemButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        self.view.addSubview(leftItemButton)
        leftItemButton.addTarget(self, action: #selector(back(_ :)), for: UIControl.Event.touchUpOutside)
        
        let lb1 = UILabel.init(frame: CGRect.init(x: 140, y: 20+44, width: 100, height: 40))
        lb1.text = "实时翻译"
        lb1.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        lb1.font = UIFont.boldSystemFont(ofSize: 20)
        lb1.textAlignment = .center
        self.view.addSubview(lb1)
        
        let rightItemButton = UIButton.init(frame: CGRect.init(x: 280, y: 20+44, width: 100, height: 40))
        rightItemButton.setTitle("全屏模式", for: .normal)
        rightItemButton.setTitleColor(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1), for: .normal)
        rightItemButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        self.view.addSubview(rightItemButton)
        
        let chineseButton = UIButton.init(frame: CGRect.init(x: 0, y: 20+44+45, width: 150, height: 40))
        chineseButton.setTitle("简体中文", for: .normal)
        chineseButton.setTitleColor(UIColor.black, for: .normal)
        chineseButton.layer.borderWidth = 1
        chineseButton.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        chineseButton.titleLabel?.textAlignment = .center
        self.view.addSubview(chineseButton)
        
        let bt3 = UIButton.init(frame: CGRect.init(x: 150, y: 20+44+45, width: 80, height: 40))
        bt3.setImage(UIImage(named: "transformation"), for: .normal)
        bt3.layer.borderWidth = 1
        bt3.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        self.view.addSubview(bt3)
        
        let englishButton = UIButton.init(frame: CGRect.init(x: 230, y: 20+44+45, width: 160, height: 40))
        englishButton.setTitle("英语", for: .normal)
        englishButton.setTitleColor(UIColor.black, for: .normal)
        englishButton.layer.borderWidth = 1
        englishButton.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        englishButton.titleLabel?.textAlignment = .center
        self.view.addSubview(englishButton)
        
        //        let view1 = UIView.init(frame: CGRect.init(x: 0, y: 700, width: screen.size.width, height: 80))
        //        view1.backgroundColor = #colorLiteral(red: 0.8793784976, green: 0.8742970824, blue: 0.8829373121, alpha: 1)
        //        self.view.addSubview(view1)
        
        let tf1:UITextField = UITextField.init(frame: CGRect.init(x: 70, y: 730, width: 260, height: 40))
        //        tf1.backgroundColor = UIColor.lightGray
        tf1.placeholder = "请输入要翻译的文字"
        tf1.leftView = UIImageView(image: UIImage(named: "write"))
        tf1.leftViewMode = UITextField.ViewMode.unlessEditing
        //键盘显示样式
        tf1.keyboardType = .default
        tf1.backgroundColor = UIColor.white
        tf1.layer.borderWidth = 1
        tf1.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        tf1.clearButtonMode = UITextField.ViewMode.whileEditing
        self.view.addSubview(tf1)
        
        
        let iv1 = UIImageView.init(frame: CGRect.init(x: 25, y: 735, width: 30, height: 35))
        let image = UIImage(named: "microphone")
        iv1.image = image
        iv1.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.addSubview(iv1)
        
        
        //        let bt2 = UIButton.init(frame: CGRect.init(x:280,y:700,width:
        //            40,height: 40))
        //        bt2.setTitleColor(UIColor.blue, for: .normal)
        //        bt2.setTitle("发送", for: UIControl.State.normal)
        //        self.view.addSubview(bt2)
        //
    }
    
    @objc func back(_ sender: AnyObject){
        print("点击了这个按钮")
        dismiss(animated: true, completion: nil)
    }
    
}
