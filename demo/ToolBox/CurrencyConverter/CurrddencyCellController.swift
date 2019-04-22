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
     
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        let tableView = UITableView(frame: view.bounds, style: .grouped)
        tableView.backgroundColor = UIColor.white;
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        
        dataSource = [
            ["currddency":"人民币","currddencyabbreviation":"CNY","money":"CNY_Icon_57x40_"],
            ["currddency":"人民币","currddencyabbreviation":"CNY","money":"CNY_Icon_57x40_"],
            ["currddency":"人民币","currddencyabbreviation":"CNY","money":"CNY_Icon_57x40_"],
            ["currddency":"人民币","currddencyabbreviation":"CNY","money":"CNY_Icon_57x40_"]
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
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20
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

