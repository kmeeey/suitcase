//
//  ViewController.swift
//  navigation
//
//  Created by abc on 2019/4/3.
//  Copyright © 2019 abc. All rights reserved.
//

import UIKit

class Assistant: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //加载试图后进行任何其他设置
        self.navigationItem.title = "行程助手"
        self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        //设置左上角导航按钮的样式和功能
        let leftItem = UIBarButtonItem(title: "行程", style: .plain, target: self, action: #selector(leftPage))
        leftItem.tintColor = UIColor.gray
        self.navigationItem.leftBarButtonItem = leftItem
        
        //设置右上角导航按钮的样式和功能
        let rightItem = UIBarButtonItem(title: "列表", style: .plain,target: self,action: #selector(rightPage))
        rightItem.tintColor = UIColor.gray
        self.navigationItem.rightBarButtonItem = rightItem
        
        
       
    }
    
    //按钮的点击事件
    @objc func leftPage() {
        //初始化第二个视图控制器对象
        let viewController1 = CreateTrip()
        //将第二个视图控制器压入导航视图控制器，实现页面跳转
    self.navigationController?.pushViewController(viewController1,animated: true)
}
    
    @objc func rightPage() {
        //初始化第二个视图控制器对象
        let viewController2 = CreateTrip()
        //将第二个视图控制器压入导航视图控制器，实现页面跳转
        self.navigationController?.pushViewController(viewController2,animated: true)
    }
    
    
    
    //视图即将可见时执行该方法
    //导航栏的样式设置
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //设置是否透明
        //self.navigationController?.navigationBar.isTranslucent = false
        //设置系统样式
       //self.navigationController?.navigationBar.barStyle = .black
        //设置背景样式
       //self.navigationController?.navigationBar.barTintColor = UIColor.orange
    }
    
    
//let imageView = UIImageView(image: UIImage(named: "image"))
//    imageView.frame = CGRect(x:10, y:30, width:300, height:150)
//    self.view.addSubview(imageView)
//
//
//    let path = Bundle.main.path(forResource: "image", ofType: "png")
//    let newImage = UIImage(contentsOfFile: path!)
//    let imageView = UIImageView(image:newImage)
//    self.view.addSubview(imageView)
    
}




