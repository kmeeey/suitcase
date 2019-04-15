//
//  viewController02.swift
//  navigation
//
//  Created by abc on 2019/4/3.
//  Copyright © 2019 abc. All rights reserved.
//

import UIKit
class CreateTrip: UIViewController {
    var isHideNavBar: Bool = false
    var isHideToolBar: Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //加载视图后进行任何其他设置
        self.title = "第二页"
        self.view.backgroundColor = UIColor.white
        let btHideNavBar = UIButton(frame: CGRect(x: 60, y: 200,width: 240, height: 50))
        
        //设置按钮上的标题文字
        btHideNavBar.setTitle("隐藏或显示顶部导航栏", for: UIControl.State())
        btHideNavBar.backgroundColor = UIColor.orange
        btHideNavBar.addTarget(self, action: #selector(hidNavigationBar), for: UIControl.Event.touchUpInside)
        self.view.addSubview(btHideNavBar)
        let btHideToolBar = UIButton(frame: CGRect(x: 60, y: 30, width: 240, height: 50))
        btHideNavBar.setTitle("隐藏或显示底部工具栏", for: UIControl.State())
        btHideToolBar.backgroundColor = UIColor.orange
        btHideToolBar.addTarget(self, action: #selector(hideToolBar), for: UIControl.Event.touchUpInside)
        self.view.addSubview(btHideToolBar)

    }
    
    //隐藏或显示顶部导航栏的方法
    @objc func hidNavigationBar (){
        if isHideNavBar == false {
            self.navigationController?.setNavigationBarHidden(true, animated: true)
            isHideNavBar = true
        } else {
            self.navigationController?.setNavigationBarHidden(false, animated: true)
            isHideNavBar = false
        }
    }
    
    //隐藏或显示底部工具栏的方法
    @objc func hideToolBar (){
        if isHideToolBar == false {
            self.navigationController?.setToolbarHidden(true, animated: true)
            isHideToolBar = true
        } else {
            self.navigationController?.setToolbarHidden(false, animated: true)
            isHideToolBar = false
        }
    }
}
