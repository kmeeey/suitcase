//
//  CusTabbarViewController.swift
//  demo
//
//  Created by 朱信磊 on 2019/4/3.
//  Copyright © 2019 com.niit.ios. All rights reserved.
//

import UIKit

class CusTabbarViewController: UITabBarController {

    var aryViewControllers: Array<UIViewController>?;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.aryViewControllers = [];
        // Do any additional setup after loading the view.
        self.initViewControllers();
    }
   
    func initViewControllers() -> Void {
        let index = ToolBoxPage();
        self.setViewControllerItem(vc: index, title: "首页", imgNor: UIImage.init(named: "btn_index_normal")!, imgSel: UIImage.init(named: "btn_index_selected")!)
        
        let myVC = MyViewController();
        self.setViewControllerItem(vc: myVC, title: "我的", imgNor: UIImage.init(named: "btn_me_normal")!, imgSel: UIImage.init(named: "btn_me_selected")! )
        
        let third = Assistant();
        self.setViewControllerItem(vc: third, title: "行程助手", imgNor: UIImage.init(named: "btn_me_normal")!, imgSel: UIImage.init(named: "btn_me_selected")! )
        
        self.viewControllers = self.aryViewControllers;
    }
    
    func setViewControllerItem(vc: UIViewController,title: String, imgNor: UIImage, imgSel: UIImage) -> Void {
        let item = UITabBarItem.init(title: title, image: imgNor.withRenderingMode(UIImage.RenderingMode.alwaysOriginal), selectedImage: imgSel.withRenderingMode(UIImage.RenderingMode.alwaysOriginal));
        item.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.blue], for: UIControl.State.normal);
        item.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.green], for: UIControl.State.highlighted);
        vc.tabBarItem = item;
        let  cusNav = UINavigationController.init(rootViewController: vc);
        cusNav.navigationBar.tintColor = UIColor.white;
        cusNav.navigationBar.isTranslucent = false;
        self.aryViewControllers?.append(cusNav);
    }

}
