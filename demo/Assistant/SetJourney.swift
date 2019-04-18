//
//  SetJourney.swift
//  demo2
//
//  Created by abc on 2019/4/17.
//  Copyright © 2019 abc. All rights reserved.
//

import UIKit

class SetJourney : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //加载试图后进行任何其他设置
        self.navigationItem.title = "设置旅程"
        self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        //设置左上角导航按钮的样式和功能
        let leftItem = UIBarButtonItem(title: "返回", style: .plain, target: self, action: #selector(leftPage))
        leftItem.tintColor = UIColor.red
        self.navigationItem.leftBarButtonItem = leftItem
        
        //设置右上角导航按钮的样式和功能
        let rightItem = UIBarButtonItem(title: "完成", style: .plain,target: self,action: #selector(rightPage))
        rightItem.tintColor = UIColor.gray
        self.navigationItem.rightBarButtonItem = rightItem
        
        //设置旅程
        
        
        
        
    }
    
    //按钮的点击事件
    @objc func leftPage() {
        //初始化第二个视图控制器对象
        let trippage = Assistant()
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


