//
//  IndexViewController.swift
//  demo
//
//  Created by 朱信磊 on 2019/4/3.
//  Copyright © 2019 com.niit.ios. All rights reserved.
//

import UIKit

class ToolBoxPage: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var arrayDatas:Array<Int>?
    var myTab:UITableView?;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.arrayDatas = [];
        self.view.backgroundColor = UIColor.white;
        for i in 0..<10 {
            self.arrayDatas?.append(i);
        }
    }
    

    override func loadView() {
        super.loadView();
        self.navigationItem.title = "首页";
        self.myTab = UITableView.init(frame: self.view.bounds, style: UITableView.Style.plain);
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

}
