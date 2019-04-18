//
//  ListPage.swift
//  demo2
//
//  Created by abc on 2019/4/17.
//  Copyright © 2019 abc. All rights reserved.
//

import UIKit

class ListPage : UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //加载试图后进行任何其他设置
        self.navigationItem.title = "行程助手"
        self.view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        let main = UIScreen.main.bounds.size
        let view = UIView(frame: CGRect(x: 0, y: 0, width: main.width, height: main.height))
        //设置左上角导航按钮的样式和功能
        let leftItem = UIBarButtonItem(title: "返回", style: .plain, target: self, action: #selector(leftPage))
        leftItem.tintColor = UIColor.red
        self.navigationItem.leftBarButtonItem = leftItem
        
        //设置右上角导航按钮的样式和功能
        let rightItem = UIBarButtonItem(title: "创建行程", style: .plain,target: self,action: #selector(rightPage))
        rightItem.tintColor = UIColor.red
        self.navigationItem.rightBarButtonItem = rightItem
        
        
        //设置添加标题图片按钮
        let travelassistant_default = UIButton(type: .system)
        //设置按钮的大小和位置
        travelassistant_default.frame = CGRect(x: 12, y: 12, width: 350, height: 155)
        //设置按钮的背景图片
        travelassistant_default.setBackgroundImage(UIImage(named: "travelassistant_default"), for: .normal)
        //把图片添加到view中
        view.addSubview(travelassistant_default)
        //设置按钮的点击事件
        travelassistant_default.addTarget(self, action: #selector(leftPage), for: .touchUpInside)
        
        
        
        //设置白条条图片
        let viewspot_press = UIImageView(frame: CGRect(x: 12, y: travelassistant_default.frame.origin.y+travelassistant_default.frame.size.height, width: 350, height: 35))
        viewspot_press.image = UIImage(named: "translate_press")
        view.addSubview(viewspot_press)
        
        
    }
    
    
    
    
    //按钮的点击事件
    @objc func leftPage() {
        //初始化第二个视图控制器对象
        let viewController1 = Assistant()
        //将第二个视图控制器压入导航视图控制器，实现页面跳转
        self.navigationController?.pushViewController(viewController1,animated: true)
    }
    
    @objc func rightPage() {
        //初始化第二个视图控制器对a
        let listpage = SetJourney()
        //将第二个视图控制器压入导航视图控制器，实现页面跳转
        self.navigationController?.pushViewController(listpage,animated: true)
    }
    
}

