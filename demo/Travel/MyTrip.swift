//
//  IndexViewController.swift
//  demo
//
//  Created by 朱信磊 on 2019/4/3.
//  Copyright © 2019 com.niit.ios. All rights reserved.
//

import UIKit

class MyTrip: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    var dataSource = [[String:String]()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //获取屏幕
        let screen = UIScreen.main.bounds
        self.view.backgroundColor =  #colorLiteral(red: 0.9763445258, green: 0.976619184, blue: 0.967718184, alpha: 1)
//        let navigationBarHeight: CGFloat = 44//默认高度
        //        let navigationBar = UINavigationBar(frame: CGRect(x: 0, y: 0, width: screen.size.width, height: navigationBarHeight))
        //        //设置导航栏标题名字
        //        let navigationItem = UINavigationItem(title:"游记")
        self.navigationItem.title = "游记"
        //        navigationBar.items = [navigationItem]
        //        self.view.addSubview(navigationBar)
        
        //设置空的控件
        let view1 = UIView(frame: CGRect(x: 0, y: 0,width: screen.size.width, height: 50))
        view1.backgroundColor = #colorLiteral(red: 0.999904573, green: 1, blue: 0.999872148, alpha: 1)
        self.view.addSubview(view1)
        //左边字体设置
        let label1 = UILabel(frame: CGRect(x: 60, y: (view1.frame.size.height - 30)/2, width: 100, height: 30))
        label1.text = "全部城市"
        label1.textColor = #colorLiteral(red: 0.6822943687, green: 0.6823918819, blue: 0.6822634339, alpha: 1)
        label1.font = UIFont(name: "Zapfino", size: 18)
        view1.addSubview(label1)
        //右边字体设置
        let label2 = UILabel(frame: CGRect(x: screen.size.width/2 + 60 , y: (view1.frame.size.height - 30)/2, width: 100, height: 30))
        label2.text = "默认排序"
        label2.textColor = #colorLiteral(red: 0.6822943687, green: 0.6823918819, blue: 0.6822634339, alpha: 1)
        label2.font = UIFont(name: "Zapfino", size: 18)
        view1.addSubview(label2)
        //分割线
        let line =  UIView.init(frame: CGRect.init(x:screen.size.width/2, y: 10, width: 1.5, height: 30))
        line.backgroundColor = #colorLiteral(red: 0.6822943687, green: 0.6823918819, blue: 0.6822634339, alpha: 1)
        view1.addSubview(line)
        
        self.view.backgroundColor = UIColor.white;
        self.navigationItem.title = "游记";
        
        
        let view2 = UIView.init(frame:CGRect.init(x:0,y:view1.frame.size.height + 0,width:self.view.frame.size.width,height:
            230))
        view2.backgroundColor = UIColor.red
        self.view.addSubview(view2)
        
        let tableView = UITableView(frame: view.bounds, style: .plain)
        tableView.backgroundColor = UIColor.white;
        view2.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        
        
        dataSource = [
            ["title":"徽州古城游，记一笔生活的味道",
             "icon":"huizhou-icon",
             "icon2":"login_page_fragment_center_head",
             "label2":"12","label3":"993","label4":"0"],
            ["title":"徽州古城游，记一笔生活的味道",
             "icon":"huizhou-icon",
             "icon2":"login_page_fragment_center_head",
             "label2":"2222","label3":"993","label4":"0"],
            ["title":"徽州古城游，记一笔生活的味道",
             "icon":"huizhou-icon",
             "icon2":"login_page_fragment_center_head",
             "label2":"222","label3":"222","label4":"0"],
            ["title":"徽州古城游，记一笔生活的味道",
             "icon":"huizhou-icon",
             "icon2":"login_page_fragment_center_head",
             "label2":"0","label3":"443","label4":"0"],
            ["title":"徽州古城游，记一笔生活的味道",
             "icon":"huizhou-icon",
             "icon2":"login_page_fragment_center_head",
             "label2":"0","label3":"664","label4":"0"],
            ["title":"徽州古城游，记一笔生活的味道",
             "icon":"huizhou-icon",
             "icon2":"login_page_fragment_center_head",
             "label2":"0","label3":"993","label4":"0"],
            ["title":"徽州古城游，记一笔生活的味道",
             "icon":"huizhou-icon",
             "icon2":"login_page_fragment_center_head",
             "label2":"0","label3":"338","label4":"0"]
        ]
    }
    
    //MARK: UITableViewDataSource
    // cell的个数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    // UITableViewCell 基本样式
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellid = "testCellID"
        var cell:NewTableViewCell? = tableView.dequeueReusableCell(withIdentifier: cellid) as? NewTableViewCell
        if cell == nil {
            cell = NewTableViewCell(style: .subtitle, reuseIdentifier: cellid)
        }
        let dict:Dictionary = dataSource[indexPath.row]
        cell?.icon.image = UIImage(named: dict ["icon"]!)
        cell?.icon1.image = UIImage(named: dict ["icon2"]!)
        cell?.label.text = dict["title"]
        cell?.label2.text  = dict["label2"]
        cell?.label3.text  = dict["label3"]
        cell?.label4.text  = dict["label4"]
        return cell!
    }
    
    //MARK: UITableViewDelegate
    // 设置cell高度
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 230
    }
    // 选中cell后执行此方法
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
}
