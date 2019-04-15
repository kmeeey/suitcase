//
//  FirstWeather.swift
//  demo
//
//  Created by niit97 on 2019/4/15.
//  Copyright © 2019 com.niit.ios. All rights reserved.
//

import UIKit

class FirstWeather: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let screen = UIScreen.main.bounds
        self.view.backgroundColor = #colorLiteral(red: 0.9068111181, green: 0.9017875791, blue: 0.906077683, alpha: 1)
        
        let navigationBarHeight:CGFloat = 44
        let navigationBar = UINavigationBar(frame: CGRect(x: 0, y: 20+10, width: screen.size.width, height: navigationBarHeight))
        navigationBar.backgroundColor = UIColor.white
        
        let backButtonItem = UIBarButtonItem(title:"返回",style: .plain, target: self, action: #selector(back(_ :)))
        backButtonItem.tintColor = UIColor.red
        
        let saveButtonItem = UIBarButtonItem(title: "主页",style: .plain, target: self, action: #selector(save(_ :)))
        saveButtonItem.tintColor = UIColor.red
        
        let navigationItem = UINavigationItem(title: "行程天气")
        navigationItem.leftBarButtonItem = backButtonItem
        navigationItem.rightBarButtonItem = saveButtonItem
        
        navigationBar.items = [navigationItem]
        self.view.addSubview(navigationBar)
        
        let view1 = UIView.init(frame: CGRect.init(x: 0, y: navigationBar.frame.origin.y + navigationBar.frame.height + 5, width: screen.size.width, height: screen.size.height - (navigationBar.frame.origin.y + +navigationBar.frame.height + 5)))
        view1.backgroundColor = UIColor.white
        self.view.addSubview(view1)
        
        let image1 = UIImageView.init(frame: CGRect.init(x: 0, y: view1.frame.origin.y + 100, width: screen.size.width, height: 200))
        let image = UIImage(named: "weather")
        image1.image = image
        view1.addSubview(image1)
        
        let setweatherButton = UIButton.init(frame: CGRect.init(x: (screen.size.width - 80)/2, y: image1.frame.origin.y + image1.frame.size.height + 10, width: 80, height: 30))
        setweatherButton.setBackgroundImage(UIImage(named: "setweather"),for: .normal)
        setweatherButton.addTarget(self, action: #selector(setweather(_ :)), for: .touchUpInside)
        view1.addSubview(setweatherButton)
        
        let view2 = UIView.init(frame: CGRect.init(x: 0, y: 0, width: screen.size.width
            , height:navigationBarHeight))
        view2.backgroundColor = UIColor.white
        self.view.addSubview(view2)
    }
    
    @objc func back(_ sender: AnyObject){
        print("返回上一界面")
    }
    
    @objc func save(_ sender: AnyObject){
        print("返回上一界面")
    }
    
    @objc func setweather(_ sender: AnyObject){
        print("跳转到下一界面")
    }
}
