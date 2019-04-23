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
    var icon3:UIImageView?
    
    lazy var headerview = {()  -> UIView in

        let view = UIView.init(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 150));
        view.backgroundColor =  .white
        self.view.addSubview(view)
        let label4  = UILabel(frame: CGRect(x: 15, y: 0, width:UIScreen.main.bounds.size.width, height: 50))
        label4.text = "默认排序"
        label4.textColor = .black
        label4.font = UIFont.systemFont(ofSize: 15)
        
        view.addSubview(label4)

        
        let label5  = UILabel(frame: CGRect(x: 15, y: label4.frame.size.height, width: UIScreen.main.bounds.size.width, height: 50))
        
        label5.text = "默认排序"
        
        label5.textColor = .black
        
        label5.font = UIFont.systemFont(ofSize: 15)
        
        view.addSubview(label5)
        let label6  = UILabel(frame: CGRect(x: 15, y: label5.frame.origin.y  +
            label5.frame.size.height, width: UIScreen.main.bounds.size.width, height: 50))
        label6.text = "默认排序"
        label6.textColor = .black
        label6.font = UIFont.systemFont(ofSize: 15)
        view.addSubview(label6)
        let line1  = UIView(frame: CGRect(x: 15, y: 50, width: UIScreen.main.bounds.size.width - 20, height: 1))
        line1.backgroundColor =  .black
        view.addSubview(line1)
        let line2  = UIView(frame: CGRect(x: 15, y: 100 ,width: UIScreen.main.bounds.size.width - 20, height: 1))
        line2.backgroundColor =  .black
        view.addSubview(line2)
        return view ;
    }();


    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //获取屏幕
        let screen = UIScreen.main.bounds
        //背景颜色
        self.view.backgroundColor =  #colorLiteral(red: 0.9763445258, green: 0.976619184, blue: 0.967718184, alpha: 1)
        //导航栏title名字
        self.navigationItem.title = "游记"

        
        //设置空的控件
        let view1 = UIView(frame: CGRect(x: 0, y: 0,width: screen.size.width, height: 50))
        view1.backgroundColor = #colorLiteral(red: 0.999904573, green: 1, blue: 0.999872148, alpha: 1)
        self.view.addSubview(view1)
        //左边字体设置
        let label1 = UILabel(frame: CGRect(x: 60, y: (view1.frame.size.height - 30)/2, width: 100, height: 30))
        label1.text = "全部城市"
        label1.textColor = #colorLiteral(red: 0.6822943687, green: 0.6823918819, blue: 0.6822634339, alpha: 1)
        label1.font = UIFont(name: "Zapfino", size: 18)
        
        view1.isUserInteractionEnabled = true
        view1.addSubview(label1)
        //右边字体设置
        let label2 = UILabel(frame: CGRect(x: screen.size.width/2 + 60 , y: (view1.frame.size.height - 30)/2, width: 80, height: 30))
        label2.text = "默认排序"
        label2.textColor = #colorLiteral(red: 0.6822943687, green: 0.6823918819, blue: 0.6822634339, alpha: 1)
        label2.font = UIFont(name: "Zapfino", size: 18)
        //点击事件
        label2.isUserInteractionEnabled = true
        label2.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(clickSort)))
        view1.addSubview(label2)
        
        
        
        //分割线
        let line =  UIView.init(frame: CGRect.init(x:screen.size.width/2, y: 10, width: 1.5, height: 30))
        line.backgroundColor = #colorLiteral(red: 0.6822943687, green: 0.6823918819, blue: 0.6822634339, alpha: 1)
        view1.addSubview(line)
        
        icon3  = UIImageView(frame: CGRect(x: label2.frame.origin.x + label2.frame.size.width, y: label2.frame.origin.y  +  10, width: 13, height: 8))
        
        icon3?.image = UIImage(named: "pd_arrow_down_18x10_@2x")
        view1.addSubview(icon3!)
        
        
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
             "icon2":"login_page_fragment_information_head_icon",
             "label2":"12","label3":"993","label4":"0"],
            ["title":"徽州古城游，记一笔生活的味道",
             "icon":"huizhou-icon",
             "icon2":"login_page_fragment_information_head_icon",
             "label2":"2222","label3":"993","label4":"0"],
            ["title":"徽州古城游，记一笔生活的味道",
             "icon":"huizhou-icon",
             "icon2":"login_page_fragment_information_head_icon",
             "label2":"222","label3":"222","label4":"0"],
            ["title":"徽州古城游，记一笔生活的味道",
             "icon":"huizhou-icon",
             "icon2":"login_page_fragment_information_head_icon",
             "label2":"0","label3":"443","label4":"0"],
            ["title":"徽州古城游，记一笔生活的味道",
             "icon":"huizhou-icon",
             "icon2":"login_page_fragment_information_head_icon",
             "label2":"0","label3":"664","label4":"0"],
            ["title":"徽州古城游，记一笔生活的味道",
             "icon":"huizhou-icon",
             "icon2":"login_page_fragment_information_head_icon",
             "label2":"0","label3":"993","label4":"0"],
            ["title":"徽州古城游，记一笔生活的味道",
             "icon":"huizhou-icon",
             "icon2":"login_page_fragment_information_head_icon",
             "label2":"0","label3":"338","label4":"0"]
        ]
    }
    
    
    @objc func clickSort(){
       
        self.view.addSubview(icon3!)
        self.view.addSubview(self.headerview)
        UIView.animate(withDuration: 0, animations: {
            self.headerview.frame = CGRect.init(x: 0, y: 50, width: self.view.frame.size.width, height: self.headerview.frame.size.height);
        }) { (Bool) in
            self.headerview.backgroundColor = UIColor.white;
            self.icon3?.image = UIImage(named: "pd_arrow_down_18x10_@3x")
        }
        if self.icon3?.image == UIImage(named: "pd_arrow_down_18x10_@3x") {
            self.headerview.isHidden = false
            UIView.animate(withDuration: 0, animations: {
                self.headerview.frame = CGRect.init(x: 0, y: -200, width: self.view.frame.size.width, height: self.headerview.frame.size.height);
            }) { (Bool) in
                self.headerview.backgroundColor = UIColor.white;
                 self.icon3?.image = UIImage(named: "pd_arrow_down_18x10_@2x")
                
            }
        }
   
        
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
