//
//  CurrddencyCellController.swift
//  demo
//
//  Created by 郑学习 on 2019/4/22.
//  Copyright © 2019 com.niit.ios. All rights reserved.
//


import UIKit

class CurrddencyCellController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    var dataSource = [[String:String]()]
    let screen = UIScreen.main.bounds
     
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.backgroundColor = UIColor.white
        //1. 创建NavigationBar
        let navigationBarHeight: CGFloat = 44//默认高度
        let screen = UIScreen.main.bounds
        let navigationBar = UINavigationBar(frame: CGRect(x: 0, y: 44 , width: screen.size.width, height: navigationBarHeight))
        let leftbtn = UIBarButtonItem(title:"返回",style:.plain,target: self,action: #selector(back(_:)))
        
        
        leftbtn.tintColor = UIColor.red
        let navigationItem = UINavigationItem(title:"币种选择")
        navigationItem.leftBarButtonItem = leftbtn
        navigationBar.items = [navigationItem]
        self.view.addSubview(navigationBar)
        
        let tableView = UITableView(frame: CGRect.init(x: 0, y: 88, width: screen.width, height: screen.height), style: .grouped)
        tableView.backgroundColor = UIColor.white;
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        
        dataSource = [
            ["currddency":"人民币","currddencyabbreviation":"CNY","money":"CNY_Icon_57x40_"],
            ["currddency":"港币","currddencyabbreviation":"HKD","money":"HKD_Small_Icon_57x40_"],
            ["currddency":"澳门币","currddencyabbreviation":"MOP","money":"MOP_Icon_57x40_"],
            ["currddency":"新台币","currddencyabbreviation":"TWD","money":"TWD_Icon_57x40_"],
            ["currddency":"美元","currddencyabbreviation":"USD","money":"USD_Icon_57x40_"],
            ["currddency":"英镑","currddencyabbreviation":"GBP","money":"GBP_Icon_57x40_"],
            ["currddency":"日元","currddencyabbreviation":"JPY","money":"JPY_Icon_57x40_"],
            ["currddency":"欧元","currddencyabbreviation":"EUR","money":"EUR_Icon_57x40_"],
            ["currddency":"韩元","currddencyabbreviation":"KRW","money":"KRW_Icon_57x40_"],
            ["currddency":"泰铢","currddencyabbreviation":"THB","money":"THB_Icon_57x40_"],
            ["currddency":"新加坡元","currddencyabbreviation":"SGD","money":"SGD_Icon_57x40_"],
            ["currddency":"印尼盾","currddencyabbreviation":"IDR","money":"IDR_Icon_57x40_"],
            ["currddency":"俄罗斯卢布","currddencyabbreviation":"RUB","money":"RUB_Icon_57x40_"],
            ["currddency":"澳大利亚元","currddencyabbreviation":"AUD","money":"AUD_Icon_57x40_"],
            ["currddency":"瑞士法郎","currddencyabbreviation":"CHF","money":"CHF_Icon_57x40_"],
            ["currddency":"新西兰元","currddencyabbreviation":"NZD","money":"NZD_Icon_57x40_"],
            ["currddency":"菲律宾比索","currddencyabbreviation":"PHP","money":"PHP_Icon_57x40_"],
            ["currddency":"越南盾","currddencyabbreviation":"VND","money":"VND_Icon_57x40_"],
            ["currddency":"马尔代夫卢比","currddencyabbreviation":"MVR","money":"MVR_Icon_57x40_"],
            ["currddency":"马元","currddencyabbreviation":"MYR","money":"MYR_Icon_57x40_"],
            ["currddency":"尼泊尔卢布","currddencyabbreviation":"NPR","money":"NPR_Icon_57x40_"],
            ["currddency":"加元","currddencyabbreviation":"CAD","money":"CAD_Icon_57x40_"],
            ["currddency":"阿根廷比索","currddencyabbreviation":"ARS","money":"ARS_Icon_57x40_"],
            ["currddency":"墨西哥比索","currddencyabbreviation":"MXN","money":"MXN_Icon_57x40_"],
            ["currddency":"卢比","currddencyabbreviation":"INR","money":"INR_Icon_57x40_"],
            ["currddency":"兰特","currddencyabbreviation":"ZAR","money":"ZAR_Icon_57x40_"],
            ["currddency":"摩洛哥迪拉姆","currddencyabbreviation":"MAD","money":"MAD_Icon_57x40_"],
            ["currddency":"土耳其里拉","currddencyabbreviation":"TRY","money":"TRY_Icon_57x40_"],
            ["currddency":"巴西雷亚尔","currddencyabbreviation":"BRL","money":"BRL_Icon_57x40_"],
            ["currddency":"肯尼亚先令","currddencyabbreviation":"KES","money":"KES_Icon_57x40_"],
            ["currddency":"乌克兰格里夫纳","currddencyabbreviation":"UAH","money":"UAH_Icon_57x40_"],
            ["currddency":"埃及镑","currddencyabbreviation":"EGP","money":"EGP_Icon_57x40_"],
            ["currddency":"阿联酋迪拉姆","currddencyabbreviation":"AED","money":"AED_Icon_57x40_"]
                    ]
        tableView.reloadData()
        
        let leftBarButton = UIBarButtonItem(title: "返回", style: .plain, target: self, action: #selector(back(_:)))
        navigationItem.leftBarButtonItem = leftBarButton
    }
        

    //MARK: UITableViewDataSource
    // cell的个数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count
    }
    // UITableViewCell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellid = "testCellID"
        var cell:CurrddencyCell? = tableView.dequeueReusableCell(withIdentifier: cellid) as? CurrddencyCell
        if cell==nil {
            cell = CurrddencyCell(style: .subtitle, reuseIdentifier: cellid)
        }
        let dict:Dictionary = dataSource[indexPath.row]
        cell?.moneyImv.image = UIImage(named: dict["money"]!)
        cell?.currddencyLabel.text = dict["currddency"]
        cell?.currddencyabbreviationLabel.text = dict["currddencyabbreviation"]
        return cell!
    }
    
    //MARK: UITableViewDelegate
    // 设置cell高度
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 74.0
    }

    // 选中cell后执行此方法
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
    
    @objc func back(_ sender: AnyObject){
        print("点击了这个按钮")
        self.dismiss(animated: true, completion: nil)
    }
    
}

