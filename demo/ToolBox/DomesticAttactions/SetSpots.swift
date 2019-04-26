//
//  SetSpots.swift
//  demo
//
//  Created by niit97 on 2019/4/21.
//  Copyright © 2019 com.niit.ios. All rights reserved.
//

import UIKit

class SetSpots: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    var distancedataSource = [[String:String]()]
    var evaluatedataSource = [[String:String]()]
    var itemviewdataSource = [[String]()]
    
    var distancelabletableview,evaluatelabletableview: UITableView!
    var distancelable,evaluatelabel : UILabel!
    var searchview,overallview,itemview,itemview2: UIView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == distancelabletableview{
            return distancedataSource.count
        }else{
            return evaluatedataSource.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellid = "testCellID"
        var cell:NextCell? = tableView.dequeueReusableCell(withIdentifier: cellid) as? NextCell
        if tableView == distancelabletableview{
            if cell==nil {
                cell = NextCell(style: .subtitle, reuseIdentifier: cellid)
            }
            let dict:Dictionary = distancedataSource[indexPath.row]
            cell?.icon1Imv.image = UIImage(named: dict["icon1"]!)
            cell?.spotsLabel.text = dict["name"]
            cell?.hotImv.image = UIImage(named: dict["icon2"]!)
            cell?.distanceLabel.text = dict["distance"]
            return cell!
        }else{
            if cell==nil {
                cell = NextCell(style: .subtitle, reuseIdentifier: cellid)
            }
            let dict:Dictionary = evaluatedataSource[indexPath.row]
            cell?.icon1Imv.image = UIImage(named: dict["icon1"]!)
            cell?.spotsLabel.text = dict["name"]
            cell?.hotImv.image = UIImage(named: dict["icon2"]!)
            cell?.distanceLabel.text = dict["distance"]
            return cell!
        }
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 94.0
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let screen = UIScreen.main.bounds
        self.view.backgroundColor = UIColor.white
        
        let navigationBarHeight:CGFloat = 44
        let navigationBar = UINavigationBar(frame: CGRect(x: 0, y: 20 + 10, width: screen.size.width, height: navigationBarHeight))
        
        let backButtonItem = UIBarButtonItem(title:"返回", style: .plain ,target: self, action: #selector(back(_ :)))
        backButtonItem.tintColor = .red
        
        let saveButtonItem = UIBarButtonItem(title: "",style: .plain, target: self, action: #selector(save(_ :)))
        saveButtonItem.setBackgroundImage(UIImage(named: "setspots_search"), for: .normal, barMetrics: UIBarMetrics.default)
        
        
        let navigationItem = UINavigationItem(title: "")
        navigationItem.leftBarButtonItem = backButtonItem
        navigationItem.rightBarButtonItem = saveButtonItem
        
        navigationBar.items = [navigationItem]
        self.view.addSubview(navigationBar)
        
        //ImageView添加点击事件
        let view1 = UIImageView.init(frame: CGRect.init(x: (screen.size.width - 50)/2, y: navigationBar.frame.origin.y - 20, width: 50, height: 25))
        view1.image = UIImage(named: "setspots_city")
        let singleTapGesture = UITapGestureRecognizer(target: self, action: #selector(city(_:)))
        view1.addGestureRecognizer(singleTapGesture)
        view1.isUserInteractionEnabled = true
        navigationBar.addSubview(view1)
        
        //第一横分割线
        let horizontalline1 = UIView.init(frame: CGRect.init(x: 0, y: navigationBar.frame.origin.y + navigationBar.frame.height, width: screen.size.width, height: 1))
        horizontalline1.backgroundColor = UIColor.gray
        self.view.addSubview(horizontalline1)
        
        self.overallview = UIView.init(frame: CGRect.init(x: 0, y: horizontalline1.frame.origin.y + horizontalline1.frame.height, width: screen.size.width, height: 38))
        self.overallview.backgroundColor = UIColor.white
        self.view.addSubview(self.overallview)
        
        ///距离优先view
        let distanceview = UIView.init(frame: CGRect.init(x: 0, y: 0, width: overallview.frame.width/3, height: overallview.frame.height))
        distanceview.backgroundColor = UIColor.white
        overallview.addSubview(distanceview)
        //点击事件
        let distancesingleTapGesture = UITapGestureRecognizer(target: self, action: #selector(distance))
        distanceview.addGestureRecognizer(distancesingleTapGesture)
        distanceview.isUserInteractionEnabled = true
        
        //        item.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.blue], for: UIControl.State.normal);
        //        item.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.green], for: UIControl.State.highlighted);
        
        self.distancelable = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: distanceview.frame.width, height: distanceview.frame.height))
        self.distancelable.text = "距离优先"
        self.distancelable.textColor = #colorLiteral(red: 0.4832225442, green: 0.7687507272, blue: 0.6865280867, alpha: 1)
        self.distancelable.textAlignment = .center
        distanceview.addSubview(self.distancelable)
        
        distancelabletableview = UITableView.init(frame:CGRect.init(x: 0, y: overallview.frame.origin.y + overallview.frame.size.height, width: screen.size.width, height: screen.size.height - overallview.frame.origin.y - overallview.frame.size.height))
        distancelabletableview.backgroundColor = UIColor.white
        self.view.addSubview(distancelabletableview)
        distancelabletableview.dataSource = self
        distancelabletableview.delegate = self
        
        distancedataSource = [
            ["name":"聚宝山梦幻森林水世界","icon2":"setspots_hot2","icon1":"setspots_spots1","distance":"8.94km"],
            ["name":"南京阳山碑材（明文化村）","icon2":"setspots_hot1","icon1":"setspots_spots2","distance":"8.94km"],
            ["name":"钟山风景名胜区","icon2":"setspots_hot2","icon1":"setspots_spots3","distance":"8.94km"],
            ["name":"汤山紫清湖生态旅游温泉度假区","icon2":"setspots_hot2","icon1":"setspots_spots4","distance":"8.94km"],
            ["name":"古猿人洞","icon2":"setspots_hot3","icon1":"setspots_spots5","distance":"8.94km"],
            ["name":"南京欢乐水魔方水上乐园","icon2":"setspots_hot1","icon1":"setspots_spots6","distance":"8.94km"],
            ["name":"南京工业职业技术学院","icon2":"setspots_hot1","icon1":"setspots_spots7","distance":"8.94km"],
            ["name":"聚宝山梦幻森林水世界","icon2":"setspots_hot2","icon1":"setspots_spots1","distance":"8.94km"],
            ["name":"南京阳山碑材（明文化村）","icon2":"setspots_hot1","icon1":"setspots_spots2","distance":"8.94km"],
            ["name":"钟山风景名胜区","icon2":"setspots_hot2","icon1":"setspots_spots3","distance":"8.94km"],
            ["name":"汤山紫清湖生态旅游温泉度假区","icon2":"setspots_hot2","icon1":"setspots_spots4","distance":"8.94km"],
            ["name":"古猿人洞","icon2":"setspots_hot3","icon1":"setspots_spots5","distance":"8.94km"],
            ["name":"南京欢乐水魔方水上乐园","icon2":"setspots_hot1","icon1":"setspots_spots6","distance":"8.94km"],
            ["name":"南京工业职业技术学院","icon2":"setspots_hot1","icon1":"setspots_spots7","distance":"8.94km"]
        ]
        distancelabletableview.reloadData()
        
        
        //第一竖分割线
        let verticalline1 = UIView.init(frame: CGRect.init(x: 120, y: 4, width: 1, height: distanceview.frame.height - 4*2))
        verticalline1.backgroundColor = UIColor.gray
        overallview.addSubview(verticalline1)
        
        ///评价优先view
        let evaluateview = UIView.init(frame: CGRect.init(x: overallview.frame.width/3, y: 0, width: overallview.frame.width/3, height: overallview.frame.height))
        evaluateview.backgroundColor = UIColor.white
        overallview.addSubview(evaluateview)
        //点击事件
        let evaluateviewsingleTapGesture = UITapGestureRecognizer(target: self, action: #selector(evaluate(_:)))
        evaluateview.addGestureRecognizer(evaluateviewsingleTapGesture)
        evaluateview.isUserInteractionEnabled = true
        
        self.evaluatelabel = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: evaluateview.frame.width, height: evaluateview.frame.height))
        self.evaluatelabel.text = "评价优先"
        self.evaluatelabel.textColor = UIColor.black
        self.evaluatelabel.textAlignment = .center
        evaluateview.addSubview(self.evaluatelabel)
        
        evaluatelabletableview = UITableView.init(frame:CGRect.init(x: 0, y: overallview.frame.origin.y + overallview.frame.size.height, width: screen.size.width, height: screen.size.height - overallview.frame.origin.y - overallview.frame.size.height))
        evaluatelabletableview.backgroundColor = UIColor.white
        self.view.addSubview(evaluatelabletableview)
        evaluatelabletableview.dataSource = self
        evaluatelabletableview.delegate = self
        //三个view写在同一个位置，刚开始隐藏其他两个view
        evaluatelabletableview.isHidden = true
        
        evaluatedataSource = [
            ["name":"南京工业职业技术学院","icon2":"setspots_hot2","icon1":"setspots_spots2","distance":"8.94km"],
            ["name":"南京工业职业技术学院","icon2":"setspots_hot1","icon1":"setspots_spots1","distance":"8.94km"],
            ["name":"钟山风景名胜区","icon2":"setspots_hot2","icon1":"setspots_spots3","distance":"8.94km"],
            ["name":"汤山紫清湖生态旅游温泉度假区","icon2":"setspots_hot2","icon1":"setspots_spots4","distance":"8.94km"],
            ["name":"古猿人洞","icon2":"setspots_hot3","icon1":"setspots_spots5","distance":"8.94km"],
            ["name":"南京欢乐水魔方水上乐园","icon2":"setspots_hot1","icon1":"setspots_spots6","distance":"8.94km"],
            ["name":"南京工业职业技术学院","icon2":"setspots_hot1","icon1":"setspots_spots7","distance":"8.94km"],
            ["name":"聚宝山梦幻森林水世界","icon2":"setspots_hot2","icon1":"setspots_spots1","distance":"8.94km"],
            ["name":"南京阳山碑材（明文化村）","icon2":"setspots_hot1","icon1":"setspots_spots2","distance":"8.94km"],
            ["name":"钟山风景名胜区","icon2":"setspots_hot2","icon1":"setspots_spots3","distance":"8.94km"],
            ["name":"汤山紫清湖生态旅游温泉度假区","icon2":"setspots_hot2","icon1":"setspots_spots4","distance":"8.94km"],
            ["name":"古猿人洞","icon2":"setspots_hot3","icon1":"setspots_spots5","distance":"8.94km"],
            ["name":"南京欢乐水魔方水上乐园","icon2":"setspots_hot1","icon1":"setspots_spots6","distance":"8.94km"],
            ["name":"南京工业职业技术学院","icon2":"setspots_hot1","icon1":"setspots_spots7","distance":"8.94km"]
        ]
        evaluatelabletableview.reloadData()
        
        //第二竖分隔线
        let verticalline2 = UIView.init(frame: CGRect.init(x: 245, y: 4, width: 1, height: distanceview.frame.height - 4*2))
        verticalline2.backgroundColor = UIColor.gray
        overallview.addSubview(verticalline2)
        
        ///itemview
        self.itemview = UIView.init(frame: CGRect.init(x: overallview.frame.width/3 * 2, y: 0, width: overallview.frame.width/3, height: overallview.frame.height))
        self.itemview.backgroundColor = UIColor.white
        overallview.addSubview(self.itemview)
        //点击事件
        let itemviewsingleTapGesture = UITapGestureRecognizer(target: self, action: #selector(item))
        self.itemview.addGestureRecognizer(itemviewsingleTapGesture)
        self.itemview.isUserInteractionEnabled = true
        
        let itemlabel = UILabel.init(frame: CGRect.init(x: 0, y: 0, width: self.itemview.frame.width, height: self.itemview.frame.height))
        itemlabel.text = "全部主题"
        itemlabel.textColor = UIColor.black
        itemlabel.textAlignment = .center
        self.itemview.addSubview(itemlabel)
        
        let itemimageview = UIImageView.init(frame: CGRect.init(x: 105, y: (self.itemview.frame.height - 15)/2, width: 15, height: 15))
        itemimageview.image = UIImage(named: "setspots_item")
        itemimageview.backgroundColor = UIColor.white
        self.itemview.addSubview(itemimageview)
        
        //第二横分割线
        let horizontalline2 = UIView.init(frame: CGRect.init(x: 0, y: navigationBar.frame.origin.y + navigationBar.frame.height + overallview.frame.height, width: screen.size.width, height: 1))
        horizontalline2.backgroundColor = UIColor.gray
        self.view.addSubview(horizontalline2)
        
        ///隐藏的itemview（下拉itemview）
        self.itemview2 = UIView.init(frame: CGRect(x: 0, y: horizontalline2.frame.origin.y + horizontalline2.frame.height, width: screen.size.width, height: 210))
        self.itemview2.backgroundColor = .white
        self.view.addSubview(itemview2)
        self.itemview2.isHidden = true
        
        let itemlabel1 = UILabel.init(frame: CGRect(x: 10, y: 0, width: screen.size.width, height: 30))
        itemlabel1.text = "全部景点"
        //影视基地 农家乐园 游船 登山探险 温泉 博物馆 城市观光
        itemlabel1.textColor = .black
        itemlabel1.font = UIFont.systemFont(ofSize: 15)
        self.itemview2.addSubview(itemlabel1)
        
        let itemline1 = UIView.init(frame: CGRect(x: 10, y: 30, width: screen.size.width - 10, height: 1))
        itemline1.backgroundColor = .gray
        self.itemview2.addSubview(itemline1)
        
        let itemlabel2 = UILabel.init(frame: CGRect(x: 10, y: 30, width: screen.size.width, height: 30))
        itemlabel2.text = "影视基地"
        itemlabel2.textColor = .black
        itemlabel2.font = UIFont.systemFont(ofSize: 15)
        self.itemview2.addSubview(itemlabel2)
        
        let itemline2 = UIView.init(frame: CGRect(x: 10, y: 60, width: screen.size.width - 10, height: 1))
        itemline2.backgroundColor = .gray
        self.itemview2.addSubview(itemline2)
        
        let itemlabel3 = UILabel.init(frame: CGRect.init(x: 10, y: 60, width: screen.size.width, height: 30))
        itemlabel3.text = "农家乐园"
        itemlabel3.textColor = .black
        itemlabel3.font = UIFont.systemFont(ofSize: 15)
        self.itemview2.addSubview(itemlabel3)
        
        let itemline3 = UIView.init(frame: CGRect(x: 10, y: 90, width: screen.size.width - 10, height: 1))
        itemline3.backgroundColor = .gray
        self.itemview2.addSubview(itemline3)
        
        
        let itemlabel4 = UILabel.init(frame: CGRect.init(x: 10, y: 90, width: screen.size.width, height: 30))
        itemlabel4.text = "游船"
        itemlabel4.textColor = .black
        itemlabel4.font = UIFont.systemFont(ofSize: 15)
        self.itemview2.addSubview(itemlabel4)
        
        let itemline4 = UIView.init(frame: CGRect(x: 10, y: 120, width: screen.size.width - 10, height: 1))
        itemline4.backgroundColor = .gray
        self.itemview2.addSubview(itemline4)
        
        let itemlabel5 = UILabel.init(frame: CGRect.init(x: 10, y: 120, width: screen.size.width, height: 30))
        itemlabel5.text = "温泉"
        itemlabel5.textColor = .black
        itemlabel5.font = UIFont.systemFont(ofSize: 15)
        self.itemview2.addSubview(itemlabel5)
        
        let itemline5 = UIView.init(frame: CGRect(x: 10, y: 150, width: screen.size.width - 10, height: 1))
        itemline5.backgroundColor = .gray
        self.itemview2.addSubview(itemline5)
        
        let itemlabel6 = UILabel.init(frame: CGRect.init(x: 10, y: 150, width: screen.size.width, height: 30))
        itemlabel6.text = "博物馆"
        itemlabel6.textColor = .black
        itemlabel6.font = UIFont.systemFont(ofSize: 15)
        self.itemview2.addSubview(itemlabel6)
        
        let itemline6 = UIView.init(frame: CGRect(x: 10, y: 180, width: screen.size.width - 10, height: 1))
        itemline6.backgroundColor = .gray
        self.itemview2.addSubview(itemline6)
        
        let itemlabel7 = UILabel.init(frame: CGRect.init(x: 10, y: 180, width: screen.size.width, height: 30))
        itemlabel7.text = "城市观光"
        itemlabel7.textColor = .black
        itemlabel7.font = UIFont.systemFont(ofSize: 15)
        self.itemview2.addSubview(itemlabel7)
        
        
        ///搜索栏
        self.searchview = UIView.init(frame: CGRect.init(x: 0, y: 0, width: screen.size.width, height: 20+44+10))
        searchview.backgroundColor = UIColor.white
        self.view.addSubview(searchview)
        searchview.isHidden = true
        
        let searchinputview = UIView.init(frame: CGRect.init(x: 10, y: 35, width: searchview.frame.width - 70, height: 30))
        searchinputview.backgroundColor = #colorLiteral(red: 0.8578647971, green: 0.8628280759, blue: 0.8756331801, alpha: 1)
        searchinputview.layer.cornerRadius = 5
        searchview.addSubview(searchinputview)
        
        let searchinputimg = UIImageView.init(frame: CGRect.init(x: 5, y: 0, width: 30, height: 30))
        searchinputimg.image = UIImage(named: "setspots_searchinput")
        searchinputview.addSubview(searchinputimg)
        
        let searchinputtext = UITextField.init(frame: CGRect.init(x: searchinputimg.frame.width + 5, y: 0, width: 150, height: 30))
        searchinputtext.text = "请输入景点名称"
        searchinputtext.font = UIFont.systemFont(ofSize: 18)
        searchinputtext.textColor = #colorLiteral(red: 0.5686843395, green: 0.5684539676, blue: 0.5900611877, alpha: 1)
        searchinputview.addSubview(searchinputtext)
        
        
        let searchreturnbutton = UIButton.init(frame: CGRect.init(x: searchview.frame.width - 50, y: 30, width: 40, height: 40))
        searchreturnbutton.setTitle("取消", for: .normal)
        searchreturnbutton.setTitleColor(.red, for: .normal)
        searchview.addSubview(searchreturnbutton)
        
        searchreturnbutton.addTarget(self, action: #selector(searchreturn(_ :)), for: .touchUpInside)
        
    }
    
    @objc func back(_ sender: AnyObject){
        print("返回上一界面")
        self.dismiss(animated: true, completion: nil)
    }
    
    @objc func save(_ sender: AnyObject){
        print("搜索")
        searchview.isHidden = false
        self.overallview.backgroundColor = .gray
        
        
    }
    
    @objc func searchreturn(_ sender: AnyObject){
        searchview.isHidden = true
    }
    
    @objc func city(_ sender: AnyObject){
        print("设置城市")
    }
    
    @objc func distance(_ sender: AnyObject){
        print("距离优先")
        distancelabletableview.isHidden = false
        evaluatelabletableview.isHidden = true
        self.itemview2.isHidden = true
        
        self.distancelable.textColor = #colorLiteral(red: 0.4832225442, green: 0.7687507272, blue: 0.6865280867, alpha: 1)
        self.evaluatelabel.textColor = UIColor.black
    }
    
    @objc func evaluate(_ sender: AnyObject){
        print("评价优先")
        evaluatelabletableview.isHidden = false
        distancelabletableview.isHidden = true
        self.itemview2.isHidden = true
        
        self.distancelable.textColor = UIColor.black
        self.evaluatelabel.textColor = #colorLiteral(red: 0.4832225442, green: 0.7687507272, blue: 0.6865280867, alpha: 1)
    }
    
    @objc func item(_ sender: AnyObject){
        print("item")
        self.itemview2.isHidden = false
        
    }
    
}


