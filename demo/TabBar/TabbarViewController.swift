//
//  CusTabbarViewController.swift
//  demo
//
//  Created by 朱信磊 on 2019/4/3.
//  Copyright © 2019 com.niit.ios. All rights reserved.
//

import UIKit

class TabbarViewController: UITabBarController {

    var aryViewControllers: Array<UIViewController>?;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.aryViewControllers = [];
        // Do any additional setup after loading the view.
        self.initViewControllers();
    }
   
    func initViewControllers() -> Void {
        let index = ToolBoxPage();
        self.setViewControllerItem(vc: index, title: "工具箱", imgNor: UIImage.init(named: "main_page_table_work_box_normal")!, imgSel: UIImage.init(named: "main_page_table_work_box_press")!)
        
        let assistant = Assistant();
        self.setViewControllerItem(vc: assistant, title: "行程助手", imgNor: UIImage.init(named: "main_page_table_travelassistant_normal")!, imgSel: UIImage.init(named: "main_page_table_travelassistant_press")! )
        
        
        
        let myTrip = MyTrip();
        self.setViewControllerItem(vc: myTrip, title: "游记", imgNor: UIImage.init(named: "main_page_table_youji_normal")!, imgSel: UIImage.init(named: "main_page_table_youji_press")! )
        
        let my = Mine();
        self.setViewControllerItem(vc: my, title: "我的", imgNor: UIImage.init(named: "main_page_table_myself_normal")!, imgSel: UIImage.init(named: "main_page_table_myself_press")! )
        
        
        
        self.viewControllers = self.aryViewControllers;
    }
    
    func setViewControllerItem(vc: UIViewController,title: String, imgNor: UIImage, imgSel: UIImage) -> Void {
<<<<<<< HEAD
        
        
        let item = UITabBarItem.init(title: title, image: imgNor.withRenderingMode(UIImage.RenderingMode.alwaysOriginal), selectedImage:
            imgSel.withRenderingMode(UIImage.RenderingMode.alwaysOriginal));
        item.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.blue], for: UIControl.State.normal);
        item.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.green], for: UIControl.State.highlighted);
=======
        let item = UITabBarItem.init(title: title, image: imgNor.withRenderingMode(UIImage.RenderingMode.alwaysOriginal), selectedImage: imgSel.withRenderingMode(UIImage.RenderingMode.alwaysOriginal));
        item.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.gray], for: UIControl.State.normal);
        item.setTitleTextAttributes([NSAttributedString.Key.foregroundColor:UIColor.black], for: UIControl.State.highlighted);
>>>>>>> master
        vc.tabBarItem = item;
        
        let  cusNav = UINavigationController.init(rootViewController: vc);
        cusNav.navigationBar.tintColor = UIColor.white;
        cusNav.navigationBar.isTranslucent = false;
        self.aryViewControllers?.append(cusNav);
        
    }
    

}
