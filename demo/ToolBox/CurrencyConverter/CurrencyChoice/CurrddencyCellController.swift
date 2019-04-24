//
//  CurrddencyCellController.swift
//  demo
//
//  Created by 郑学习 on 2019/4/22.
//  Copyright © 2019 com.niit.ios. All rights reserved.
//


import UIKit

class CurrddencyCellController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
//    var dataSource = [[String:String]()]
    
    var jsonArr:NSArray = []
    
    let screen = UIScreen.main.bounds
     
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.9763886333, green: 0.9765250087, blue: 0.9763454795, alpha: 1)
        
        
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
//        tableView.dataSource = Constant.DATA_SOURCE as! UITableViewDataSource
        
        
//        let path = Bundle.main.path(forResource: "./../../Util/data.json", ofType: nil)
        let path = Bundle.main.path(forResource: "data.json", ofType: nil)
        let url = URL(fileURLWithPath: path!)
        do {
            let data = try Data(contentsOf: url)
            let jsonData = try JSONSerialization.jsonObject(with: data, options: JSONSerialization.ReadingOptions.mutableContainers)
            jsonArr = jsonData as! NSArray
        } catch let err as Error? {
            print("err:\(String(describing: err))")
        }
        
        tableView.delegate = self
        tableView.dataSource = self
        
        tableView.reloadData()
        
        let leftBarButton = UIBarButtonItem(title: "返回", style: .plain, target: self, action: #selector(back(_:)))
        navigationItem.leftBarButtonItem = leftBarButton
        leftBarButton.tintColor = .red
    }
    
 
    
    //MARK: UITableViewDataSource
    // cell的个数
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jsonArr.count
    }
    // UITableViewCell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let itemObj:NSDictionary! = (self.jsonArr[indexPath.row] as! NSDictionary)
        let cellid = "testCellID"
        var cell:CurrddencyCell? = tableView.dequeueReusableCell(withIdentifier: cellid) as? CurrddencyCell
        if cell==nil {
            cell = CurrddencyCell(style: .subtitle, reuseIdentifier: cellid)
        }
//        let dict:Dictionary = jsonArr[indexPath.row]
        
//        cell?.moneyImv.image = UIImage(named: dict["money"]!)
//        cell?.currddencyLabel.text = dict["currddency"]
//        cell?.currddencyabbreviationLabel.text = dict["currddencyabbreviation"]
        cell?.moneyImv.image = UIImage(named: itemObj.value(forKey: "money") as! String)
        cell?.currddencyLabel.text = itemObj.value(forKey: "currddency") as! String
        cell?.currddencyabbreviationLabel.text = (itemObj.value(forKey: "currddencyabbreviation") as! String)
        
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

