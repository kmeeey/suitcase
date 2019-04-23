//
//  SetJourney.swift
//  demo2
//
//  Created by abc on 2019/4/17.
//  Copyright © 2019 abc. All rights reserved.
//

import UIKit

class SetJourney : UIViewController {
    
    
     let screen = UIScreen.main.bounds
    
    
    var label_shezhichufadi : UILabel?
    var label_chufachengshi : UILabel?
    var img_weizhi : UIImageView?
    var  label_qingxuanzhe : UILabel?
    var view1 : UIView?
    
   
    var label_chufariqi : UILabel?
    var img_weizhi1 : UIImageView?
    var  label_qishishijian : UILabel?
    var view2 : UIView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //let lbTitle = UILabel.init(frame: CGRect.init(x: 0, y: 20 + 44, width: self.view.frame.size.width, height: 20))
        
        self.view.backgroundColor = #colorLiteral(red: 0.9372880459, green: 0.9370675683, blue: 0.9586622119, alpha: 1)
        
        
        //加载试图后进行任何其他设置
        self.navigationItem.title = "设置旅程"
        
        //设置左上角导航按钮的样式和功能
        let leftItem = UIBarButtonItem(title: "返回", style: .plain, target: self, action: #selector(leftPage))
        leftItem.tintColor = UIColor.red
        self.navigationItem.leftBarButtonItem = leftItem
        
        //设置右上角导航按钮的样式和功能
        let rightItem = UIBarButtonItem(title: "完成", style: .plain,target: self,action: #selector(rightPage))
        rightItem.tintColor = UIColor.gray
        self.navigationItem.rightBarButtonItem = rightItem
        
        
        
        
        
        
        //设置一个选择出发地UILabel
        label_shezhichufadi = UILabel()
        //位置
        label_shezhichufadi?.frame = CGRect(x: 10, y: 30, width: 100, height: 20)
        //文字
        label_shezhichufadi?.text = "选择出发地"
        //设置文字的颜色
        label_shezhichufadi?.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        //把label添加到视图中
        view.addSubview(label_shezhichufadi!)
        
        
        //设置一个view
        view1 = UIView()
        //设置位置
        view1?.frame = CGRect(x: 10, y: 80, width: self.view.frame.width - 10, height: 40)
        //把view1添加到视图中
        view.addSubview(view1!)
        
        //view1的监听事件
        let itemviewsingleTapGesture = UITapGestureRecognizer(target: self, action: #selector(chufachengshi))
        self.view1?.addGestureRecognizer(itemviewsingleTapGesture)
        self.view1?.isUserInteractionEnabled = true
        
        //定义一个图片
        img_weizhi = UIImageView()
        //设置图片的大小
        img_weizhi?.frame = CGRect(x: 10, y: 80, width: 40, height: 40)
        //设置背景图片
        img_weizhi?.image = UIImage(named: "title_locate_normal")
        
        img_weizhi?.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        //添加到视图中
        view.addSubview(img_weizhi!)
        
        
        
        //设置一个label
        label_chufachengshi = UILabel()
        //设置位置
        label_chufachengshi?.frame = CGRect(x: 45, y: 80, width: self.view.frame.width - 50, height: 40)
        //设置背景颜色
        label_chufachengshi?.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        //设置提示文字
        label_chufachengshi?.text = "出发城市"
        //设置提示文字颜色
        label_chufachengshi?.textColor  = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
        //添加到视图
        view.addSubview(label_chufachengshi!)
        
        //设置一个label
        label_qingxuanzhe = UILabel()
        //设置位置
        label_qingxuanzhe?.frame = CGRect(x: self.view.frame.maxX - 80, y: 90, width: 70, height: 20)
        //设置提示文字
        label_qingxuanzhe?.text = "请选择 >"
        //设置提示文字颜色
        label_qingxuanzhe?.textColor  = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        //添加到视图
        view.addSubview(label_qingxuanzhe!)
        
        
        //设置一个view
        view2 = UIView()
        //设置位置
        view2?.frame = CGRect(x: 10, y: 125, width: self.view.frame.width - 10, height: 40)
        //把view2添加到视图中
        view.addSubview(view2!)
        
        //view2的监听事件
        let itemviewsingleTapGesture1 = UITapGestureRecognizer(target: self, action: #selector(chufariqi))
        self.view2?.addGestureRecognizer(itemviewsingleTapGesture1)
        self.view2?.isUserInteractionEnabled = true
        
        //定义一个图片
        img_weizhi1 = UIImageView()
        //设置图片的大小
        img_weizhi1?.frame = CGRect(x: 10, y: 125, width: 40, height: 40)
        //设置背景图片
        img_weizhi1?.image = UIImage(named: "travel_page_calendar_left_icon")
        
        img_weizhi1?.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        //添加到视图中
        view.addSubview(img_weizhi1!)
        
        
        
        //设置一个label
        label_chufariqi = UILabel()
        //设置位置
        label_chufariqi?.frame = CGRect(x: 45, y: 125, width: self.view.frame.width - 50, height: 40)
        //设置背景颜色
        label_chufariqi?.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        //设置提示文字
        label_chufariqi?.text = "出发日期"
        //设置提示文字颜色
        label_chufariqi?.textColor  = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
        //添加到视图
        view.addSubview(label_chufariqi!)
        
        //设置一个label
        label_qishishijian = UILabel()
        //设置位置
        label_qishishijian?.frame = CGRect(x: self.view.frame.maxX - 98, y: 135, width: 110, height: 20)
        //设置提示文字
        label_qishishijian?.text = "起始时间 >"
        //设置提示文字颜色
        label_qishishijian?.textColor  = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        //添加到视图
        view.addSubview(label_qishishijian!)
        
        
        
    }
    
    
    //按钮的点击事件
    @objc func leftPage() {
        //初始化第二个视图控制器对象
        let trippage = ListPage()
        //将第二个视图控制器压入导航视图控制器，实现页面跳转
        self.navigationController?.pushViewController(trippage,animated: true)
    }
    
    @objc func rightPage() {
        //初始化第二个视图控制器对象
        let listpage = ListPage()  //列表
        //将第二个视图控制器压入导航视图控制器，实现页面跳转
        self.navigationController?.pushViewController(listpage,animated: true)
    }

    
    
    @objc func chufachengshi() {
        
        //初始化第二个视图控制器对象
        let chufachengshi = CityPage()
        //将第二个视图控制器压入导航视图控制器，实现页面跳转
        self.navigationController?.pushViewController(chufachengshi,animated: true)
        
    }
    
    @objc func chufariqi() {
        
        //初始化第二个视图控制器对象
        let chufariqi = DatePage()
        //将第二个视图控制器压入导航视图控制器，实现页面跳转
        self.navigationController?.pushViewController(chufariqi,animated: true)
        
    }
}

