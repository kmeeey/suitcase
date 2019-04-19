//
//  ViewController.swift
//  Travel Information
//
//  Created by h on 2019/4/15.
//

import UIKit

class TravelInformation: UIViewController ,UITableViewDataSource,UITableViewDelegate {
    var dataSource = [[String:String]()]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        //创建导航栏
        let navBar = UINavigationBar(frame: CGRect(x: 0, y: 30, width: self.view.frame.width, height: 30))
        //修改导航栏颜色
        UINavigationBar.appearance().barTintColor = UIColor.white
        //自定义导航栏title
        let titleLable = UILabel(frame: CGRect(x: 0, y: 0, width: 44, height: 20))
        titleLable.text = "旅行资讯"
        titleLable.textColor = UIColor.black
        titleLable.font = UIFont.systemFont(ofSize : 18)
        
        //创建导航栏组件
        let navItem = UINavigationItem()
        navItem.titleView = titleLable
        
        //创建左侧按钮
        let leftButton = UIBarButtonItem(title: "返回", style: .plain, target: self, action : #selector(onClicked(_:)))
        leftButton.tintColor = UIColor.orange
        navItem.setLeftBarButton(leftButton, animated: false)
        navBar.pushItem(navItem, animated: false)
        self.view.addSubview(navBar)
        
        //        let view1 = UIView.init(frame: CGRect.init(x: 0, y: navBar.frame.size.height+45  , width: self.view.frame.size.width, height: 250));
        //        view1.backgroundColor = UIColor.orange;
        //        self.view.addSubview(view1)
        //
        //        let imageView = UIImageView()
        //        imageView.frame = CGRect(x: 0, y: 0, width: self.view.frame.size.height, height: 250)
        //        let image = UIImage(named: "img")
        //        imageView.image = image
        //        view1.addSubview(imageView)
        //
        //        let lable = UILabel(frame: CGRect.init(x: 70, y: (view1.frame.size.height-30)/2, width: screen.size.width, height: 30))
        //        lable.text = "最让人流连忘返的地方--云南"
        //        lable.textColor = UIColor.white
        //        lable.font = UIFont(name: "infor", size: 20)
        //        view1.addSubview(lable)
        //
        //        let image1 = UIImageView()
        //        image1.frame = CGRect(x: 0, y: imageView.frame.size.height-40, width: 40, height: 40)
        //        let item_feature = UIImage(named: "strategy_page_grid_item_feature")
        //        image1.image = item_feature
        //        view1.addSubview(image1)
        //
        //        let image2 = UIImageView()
        //        image2.frame = CGRect(x: screen.size.width-160, y: imageView.frame.size.height-40, width: 40, height: 40)
        //        let find_normal = UIImage(named: "main_page_table_find_normal")
        //        image2.image = find_normal
        //        view1.addSubview(image2)
        //
        //        let image3 = UIImageView()
        //        image3.frame = CGRect(x: screen.size.width-80, y: imageView.frame.size.height-40, width: 40, height: 40)
        //        let msg_icon = UIImage(named: "setting_page_sending_msg_icon")
        //        image3.image = msg_icon
        //        view1.addSubview(image3)
        
        //        view1.backgroundColor = UIColor.orange;
        //        self.view.addSubview(view1)
        
        let view1 = UIView.init(frame: CGRect.init(x: 0, y: navBar.frame.size.height+45  , width: self.view.frame.size.width, height: self.view.frame.size.height));
        self.view.addSubview(view1)
        let tableView = UITableView(frame: view.bounds, style: .plain)
        tableView.backgroundColor = UIColor.white;
        //     self.view.addSubview(tableView)
        view1.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        
        dataSource = [
            ["icon":"login_page_fragment_center_top.png",
             "information":"最让人流连忘返的地方-云南",
             "icon1":"strategy_page_grid_item_feature",
             "l1":"666",
             "icon2":"main_page_table_find_normal",
             "l2":"666",
             "icon3":"setting_page_sending_msg_icon",
             "l3":"666"],
            ["icon":"login_page_fragment_center_top.png",
             "information":"武汉除了堪忧樱花，还能这么玩",
             "icon1":"strategy_page_grid_item_feature",
             "l1":"666",
             "icon2":"main_page_table_find_normal",
             "l2":"666",
             "icon3":"setting_page_sending_msg_icon",
             "l3":"666"],
            ["icon":"login_page_fragment_center_top.png",
             "information":"樱花盛开，这些地方为赏樱佳地",
             "icon1":"strategy_page_grid_item_feature",
             "l1":"666",
             "icon2":"main_page_table_find_normal",
             "l2":"666",
             "icon3":"setting_page_sending_msg_icon",
             "l3":"666"],
            ["icon":"login_page_fragment_center_top.png",
             "information":"顺德必吃美食，这8种你get了吗",
             "icon1":"strategy_page_grid_item_feature",
             "l1":"666",
             "icon2":"main_page_table_find_normal",
             "l2":"666",
             "icon3":"setting_page_sending_msg_icon",
             "l3":"666"],
            ["icon":"login_page_fragment_center_top.png",
             "information":"稻城亚丁，如你一般明媚",
             "icon1":"strategy_page_grid_item_feature",
             "l1":"666",
             "icon2":"main_page_table_find_normal",
             "l2":"666",
             "icon3":"setting_page_sending_msg_icon",
             "l3":"666"],
            ["icon":"login_page_fragment_center_top.png",
             "information":"稻城亚丁，如你一般明媚",
             "icon1":"strategy_page_grid_item_feature",
             "l1":"666",
             "icon2":"main_page_table_find_normal",
             "l2":"666",
             "icon3":"setting_page_sending_msg_icon",
             "l3":"666"],
            ["icon":"login_page_fragment_center_top.png",
             "information":"稻城亚丁，如你一般明媚",
             "icon1":"strategy_page_grid_item_feature",
             "l1":"666",
             "icon2":"main_page_table_find_normal",
             "l2":"666",
             "icon3":"setting_page_sending_msg_icon",
             "l3":"666"],
            ["icon":"login_page_fragment_center_top.png",
             "information":"稻城亚丁，如你一般明媚",
             "icon1":"strategy_page_grid_item_feature",
             "l1":"666",
             "icon2":"main_page_table_find_normal",
             "l2":"666",
             "icon3":"setting_page_sending_msg_icon",
             "l3":"666"],]
        tableView.reloadData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellid = "testCellID"
        var cell:NewUITableview? = tableView.dequeueReusableCell(withIdentifier: cellid) as? NewUITableview
        if cell==nil {
            cell = NewUITableview(style: .subtitle, reuseIdentifier: cellid)
        }
        let dict:Dictionary = dataSource[indexPath.row]
        cell?.img.image = UIImage(named: dict["icon"]!)
        cell?.lable.text = dict["information"]
        cell?.img1.image = UIImage(named: dict["icon1"]!)
        
        
        cell?.lable1.text = dict["l1"]
        cell?.img2.image = UIImage(named: dict["icon2"]!)
        
        cell?.lable2.text = dict["l2"]
        cell?.img3.image = UIImage(named: dict["icon3"]!)
        cell?.lable3.text = dict["l3"]
        return cell!
    }
    @objc func onClicked(_ sender: AnyObject){
        print("点击")
        self.dismiss(animated: true, completion: nil)
    }
    // 设置cell高度
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
    }
    
}

