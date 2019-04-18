//
//  Assistant.swift
//  demo2
//
//  Created by abc on 2019/4/17.
//  Copyright © 2019 abc. All rights reserved.
//

import UIKit

class Assistant: UIViewController {
    
//    let demo = demoView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        view.addSubview(demo)
        
        //加载试图后进行任何其他设置
        self.navigationItem.title = "行程助手"
        self.view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        //设置左上角导航按钮的样式和功能
        let leftItem = UIBarButtonItem(title: "行程", style: .plain, target: self, action: #selector(leftPage))
        leftItem.tintColor = UIColor.gray
        self.navigationItem.leftBarButtonItem = leftItem
        
        //设置右上角导航按钮的样式和功能
        let rightItem = UIBarButtonItem(title: "列表", style: .plain,target: self,action: #selector(rightPage))
        rightItem.tintColor = UIColor.gray
        self.navigationItem.rightBarButtonItem = rightItem
        
        //图片
        let image = UIImageView(frame: CGRect(x: self.view.frame.maxX / 4, y: self.view.frame.maxY / 7, width: 200, height: 220))
        let icon = UIImage(named: "account_assistant_nodata")
        image.image = icon
        self.view.addSubview(image)
        
        //创建行程按钮
        let btn_CreateJourney = UIButton(type: .system)
        //设置按钮的大小和位置
        btn_CreateJourney.frame = CGRect(x: (self.view.frame.maxX / 4) + 17.5, y: self.view.frame.maxY / 2.3, width: 165, height: 45)
        //设置按钮的背景图片
        btn_CreateJourney.setBackgroundImage(UIImage(named: "btn_journey"), for: .normal)
        //把图片添加到view中
        view.addSubview(btn_CreateJourney)
        //设置按钮的点击事件
        btn_CreateJourney.addTarget(self, action: #selector(creatJourney), for: .touchUpInside)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc func creatJourney() {
        
        //初始化第二个视图控制器对象
        let creatJourney = CreatJourney()
        //将第二个视图控制器压入导航视图控制器，实现页面跳转
        self.navigationController?.pushViewController(creatJourney,animated: true)
    }
    
    
    //按钮的点击事件
    @objc func leftPage() {
        //初始化第二个视图控制器对象
        let trippage = TripPage()  //行程
        //将第二个视图控制器压入导航视图控制器，实现页面跳转
        self.navigationController?.pushViewController(trippage,animated: true)
    }
    
    
    
    @objc func rightPage() {
        //初始化第二个视图控制器对象
        let listpage = ListPage()  //列表
        //将第二个视图控制器压入导航视图控制器，实现页面跳转
        self.navigationController?.pushViewController(listpage,animated: true)
    }
    
    
    
}




