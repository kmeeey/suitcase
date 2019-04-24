//
//  CurrencyConverter.swift
//  demo
//
//  Created by 郑学习 on 2019/4/19.
//  Copyright © 2019 com.niit.ios. All rights reserved.
//

import UIKit

class CurrencyConverter: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //导航栏
        let screen = UIScreen.main.bounds
        self.view.backgroundColor = #colorLiteral(red: 0.9068111181, green: 0.9017875791, blue: 0.906077683, alpha: 1)
        
        let navigationBarHeight:CGFloat = 44
        let navigationBar = UINavigationBar(frame: CGRect(x: 0, y: 44, width: screen.size.width, height: navigationBarHeight))
        navigationBar.backgroundColor = UIColor.white
        
        let backButtonItem = UIBarButtonItem(title:"返回",style: .plain, target: self, action: #selector(back(_ :)))
        backButtonItem.tintColor = UIColor.red
        
        
        let navigationItem = UINavigationItem(title: "汇率换算")
        navigationItem.leftBarButtonItem = backButtonItem
        
        
        navigationBar.items = [navigationItem]
        self.view.addSubview(navigationBar)
        
        //view1
        var view1 = UIView()
        var imageViewbg : UIImageView?
        var moneyImv : UIImageView?
        
        
        view1 = UIView.init(frame: CGRect.init(x: 0, y: 88, width: screen.width, height: 83))
        imageViewbg = UIImageView(image: UIImage(named: "exchangeHeadBG_375x83_"))
        imageViewbg!.frame = CGRect(x: 0, y: 88, width:screen.width, height:83 )
        
        moneyImv = UIImageView()
        
        
        self.view.addSubview(imageViewbg!)
        
        
 

    }
    
    

    @objc func back(_ sender: AnyObject){
        
        dismiss(animated: true, completion: nil)
        
    }
    @objc func currencyconverter(_ sender: AnyObject){
        
        let currencychoice = CurrddencyCellController()
        self.present(currencychoice, animated: true, completion: nil)
        
    }

}
