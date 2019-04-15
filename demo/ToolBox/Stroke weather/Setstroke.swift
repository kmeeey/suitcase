//
//  Setstroke.swift
//  demo
//
//  Created by niit97 on 2019/4/15.
//  Copyright © 2019 com.niit.ios. All rights reserved.
//

import UIKit

class Setstroke: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let screen = UIScreen.main.bounds
        self.view.backgroundColor = #colorLiteral(red: 0.9068111181, green: 0.9017875791, blue: 0.906077683, alpha: 1)
        
        let navigationBarHeight:CGFloat = 44
        let navigationBar = UINavigationBar(frame: CGRect(x: 0, y: 20+10, width: screen.size.width, height: navigationBarHeight))
        navigationBar.backgroundColor = UIColor.white
        
//        let backButtonItem = UIBarButtonItem(title:"返回",style: .plain, target: self, action: #selector(back(_ :)))
//        backButtonItem.tintColor = UIColor.red
//
//        let saveButtonItem = UIBarButtonItem(title: "地图",style: .plain, target: self, action: #selector(save(_ :)))
        saveButtonItem.tintColor = UIColor.red
        
        let navigationItem = UINavigationItem(title: "设置行程")
        navigationItem.leftBarButtonItem = backButtonItem
        navigationItem.rightBarButtonItem = saveButtonItem
        
        navigationBar.items = [navigationItem]
        self.view.addSubview(navigationBar)

}
    
}
