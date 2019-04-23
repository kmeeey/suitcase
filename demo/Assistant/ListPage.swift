//
//  ListPage.swift
//  demo2
//
//  Created by abc on 2019/4/17.
//  Copyright © 2019 abc. All rights reserved.
//

import UIKit

class ListPage : UIViewController, UITableViewDataSource, UITableViewDelegate{
   
    
    var dataSource = [[String: String]()]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        let screen = UIScreen.main.bounds
        
        
        
        //加载试图后进行任何其他设置
        self.navigationItem.title = "行程助手"
        
        //设置左上角导航按钮的样式和功能
        let leftItem = UIBarButtonItem(title: "返回", style: .plain, target: self, action: #selector(leftPage))
        leftItem.tintColor = UIColor.red
        self.navigationItem.leftBarButtonItem = leftItem
        
        //设置右上角导航按钮的样式和功能
        let rightItem = UIBarButtonItem(title: "创建行程", style: .plain,target: self,action: #selector(rightPage))
        rightItem.tintColor = UIColor.red
        self.navigationItem.rightBarButtonItem = rightItem
       
        
        let view1 = UIView(frame: CGRect(x: 0, y: 0, width: screen.size.width, height: screen.size.height))
        self.view.addSubview(view1)
        //tableview
        let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: view1.frame.size.width, height: view1.frame.size.height))

        tableView.dataSource = self
        tableView.delegate = self
        tableView.separatorStyle = .none  //取消分割线
        
        view1.addSubview(tableView)
        
        
        dataSource = [
            ["title": "添加标题",
             "icon": "travelassistant_default",
             "icon1": "translate_press",
             "icon2": "write",
             "icon3": "strategy_page_listitem_share_normal",
             "label1": " 0.00","label2": "0天行程","label3": "0个景点", "label4": "0条记事", "label5": "0张图片", "label6": "北京 - 南京", "label7": "¥" ],
            ["title": "添加标题",
             "icon": "travelassistant_default",
             "icon1": "translate_press",
             "icon2": "write",
             "icon3": "strategy_page_listitem_share_normal",
             "label1": " 0.00","label2": "0天行程","label3": "0个景点", "label4": "0条记事", "label5": "0张图片", "label6": "北京 - 南京", "label7": "¥"],
            ["title": "添加标题",
             "icon": "travelassistant_default",
             "icon1": "translate_press",
             "icon2": "write",
             "icon3": "strategy_page_listitem_share_normal",
             "label1": " 0.00","label2": "0天行程","label3": "0个景点", "label4": "0条记事", "label5": "0张图片" , "label6": "北京 - 南京", "label7": "¥"],
            ["title": "添加标题",
             "icon": "travelassistant_default",
             "icon1": "translate_press",
             "icon2": "write",
             "icon3": "strategy_page_listitem_share_normal",
             "label1": " 0.00","label2": "0天行程","label3": "0个景点", "label4": "0条记事", "label5": "0张图片" , "label6": "北京 - 南京", "label7": "¥"],
            ["title": "添加标题",
             "icon": "travelassistant_default",
             "icon1": "translate_press",
             "icon2": "write",
             "icon3": "strategy_page_listitem_share_normal",
             "label1": " 0.00","label2": "0天行程","label3": "0个景点", "label4": "0条记事", "label5": "0张图片" , "label6": "北京 - 南京", "label7": "¥"],
            ["title": "添加标题",
             "icon": "travelassistant_default",
             "icon1": "translate_press",
             "icon2": "write",
             "icon3": "strategy_page_listitem_share_normal",
             "label1": " 0.00","label2": "0天行程","label3": "0个景点", "label4": "0条记事", "label5": "0张图片", "label6": "北京 - 南京", "label7": "¥"],
            ["title": "添加标题",
             "icon": "travelassistant_default",
             "icon1": "translate_press",
             "icon2": "write",
             "icon3": "strategy_page_listitem_share_normal",
             "label1": " 0.00","label2": "0天行程","label3": "0个景点", "label4": "0条记事", "label5": "0张图片", "label6": "北京 - 南京", "label7": "¥"],
        ]
    }
    
    //cell的个数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    //UITabelViewCell基本样式
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellid = "testCellID"
        var cell: NewTableView? = tableView.dequeueReusableCell(withIdentifier: cellid) as?
        NewTableView
        if cell == nil {
            cell = NewTableView(style: .subtitle, reuseIdentifier: cellid)
            
        }
        let dict: Dictionary = dataSource[indexPath.row]
        cell?.background.image = UIImage(named: dict ["icon"]!)
//        cell?.icon1.image = UIImage(named: dict ["icon1"]!)
        cell?.label.text = dict ["title"]
        cell?.label1.text = dict ["label1"]
        cell?.label2.text = dict ["label2"]
        cell?.label3.text = dict ["label3"]
        cell?.label4.text = dict ["label4"]
        cell?.label5.text = dict ["label5"]
        cell?.label6.text = dict ["label6"]
        cell?.label7.text = dict ["label7"]
        
        cell?.selectionStyle = UITableViewCell.SelectionStyle.none
        
        return cell!
    }
    
    //设置cell高度
    func tableView(_ tableView: UITableView, heightForRowAt idexPath: IndexPath) -> CGFloat {
        return 230
    }
    
    //选择cell后执行此方法
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
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
    
    //背景图片的点击事件
//    @objc func
    
    

    
}

