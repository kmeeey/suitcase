//
//  ViewController.swift
//  demo
//
//  Created by 朱信磊 on 2019/3/29.
//  Copyright © 2019 com.niit.ios. All rights reserved.
//

import UIKit

class MyViewController: UIViewController,UITextFieldDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white;
        
    }
    
    override func loadView() {
        super.loadView();
        self.navigationItem.title = "我的";
        print("加载视图时调用");
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated);
        print("视图即将出现时调用");
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated);
        print("视图已经出现时调用");
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated);
        print("视图即将消息时调用");
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated);
        print("视图已经消失时调用");
    }
    
}

