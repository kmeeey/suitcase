//
//  CurrencyChoice.swift
//  demo
//
//  Created by 郑学习 on 2019/4/19.
//  Copyright © 2019 com.niit.ios. All rights reserved.
//

import UIKit

class CurrencyChoice: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var arrayDatas:Array<Int>?
    var myTab:UITableView?;
    let screen = UIScreen.main.bounds

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.arrayDatas = [];
        self.view.backgroundColor = UIColor.white;
        for i in 0..<100 {
            self.arrayDatas?.append(i);
        }

        // Do any additional setup after loading the view.
    }
    
    override func loadView() {
        super.loadView();
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.backgroundColor = UIColor.white
        //1. 创建NavigationBar
        let navigationBarHeight: CGFloat = 44//默认高度
        let screen = UIScreen.main.bounds
        let navigationBar = UINavigationBar(frame: CGRect(x: 0, y: 30 , width: screen.size.width, height: navigationBarHeight))
        let leftbtn = UIBarButtonItem(title:"返回",style:.plain,target: self,action: #selector(back(_:)))
        
        
        leftbtn.tintColor = UIColor.red
        let navigationItem = UINavigationItem(title:"币种选择")
        navigationItem.leftBarButtonItem = leftbtn
        
        navigationBar.items = [navigationItem]
        self.view.addSubview(navigationBar)
        self.myTab = UITableView.init(frame: CGRect(x: 0, y: 88, width: screen.width, height: screen.height) , style: UITableView.Style.plain);
        self.myTab?.dataSource = self;
        self.myTab?.delegate = self;
        self.view.addSubview(myTab!);
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayDatas?.count ?? 0;
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell");
        if cell == nil {
            cell = UITableViewCell.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: "cell");
        }
        cell?.textLabel?.text = "第 \(indexPath.row) 行";
        cell?.imageView?.image = UIImage.init(named: "icon_index_06");
        return cell!;
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let alert = UIAlertController.init(title: "提示", message: "点击了\(indexPath.row) 行", preferredStyle: UIAlertController.Style.alert);
        alert.addAction(UIAlertAction.init(title: "确定", style: UIAlertAction.Style.default, handler: { (action) in
            print(action.title ?? "");
        }))
        self.present(alert, animated: true) {
            
        };
        
    }
    @objc func back(_ sender: AnyObject){
        print("点击了这个按钮")
        self.dismiss(animated: true, completion: nil)
    }

}
