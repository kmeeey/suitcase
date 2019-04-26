//
//  CurrencyConverter.swift
//  demo
//
//  Created by 郑学习 on 2019/4/19.
//  Copyright © 2019 com.niit.ios. All rights reserved.
//

import UIKit

class CurrencyConverter: UIViewController ,CurrddencyCellControllerDelegate{
    var view1 : UIView?
    var view2 : UIView?
    var imageViewbg : UIImageView?
    var moneyImv : UIImageView?
    var currddencyabbreviationLabel : UILabel?
    var currddencyLabel : UILabel?
    var exchange_rate : UILabel?
    

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

        view1 = UIView.init(frame: CGRect.init(x: 0, y: 88, width: screen.width, height: 83))

        imageViewbg = UIImageView(image: UIImage(named: "exchangeHeadBG_375x83_"))
        imageViewbg!.frame = CGRect(x: 0, y: 0, width:screen.width, height:83 )
        view1?.addSubview(imageViewbg!)
        
        moneyImv = UIImageView(image: UIImage(named: "CNY_Icon_57x40_"))
        moneyImv!.frame = CGRect(x: -28, y: 20, width:screen.width/2, height:40 )
        moneyImv?.contentMode = UIImageView.ContentMode.scaleAspectFit
        moneyImv?.isUserInteractionEnabled = true
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action:#selector(ToolBoxPage.tapGestureRecognizer(sender:)))
        moneyImv?.addGestureRecognizer(tapGestureRecognizer)
        view1?.addSubview(moneyImv!)
        
        
        currddencyabbreviationLabel = UILabel(frame: CGRect.init(x: 100, y: 20, width: screen.width, height: 10))
        currddencyabbreviationLabel?.text = "CNY"
        currddencyabbreviationLabel?.textColor = .white
        currddencyabbreviationLabel?.sizeToFit()
        view1?.addSubview(currddencyabbreviationLabel!)
        
        currddencyLabel = UILabel(frame: CGRect.init(x: 100, y: 35, width: screen.width, height: 30))
        currddencyLabel?.text = "人民币"
        currddencyLabel?.font = .boldSystemFont(ofSize: 11)
        currddencyLabel?.textColor = .white
        view1?.addSubview(currddencyLabel!)
        
        exchange_rate = UILabel(frame: CGRect.init(x: screen.width/2, y: 20, width: screen.width/2, height: 57))
        exchange_rate?.text = "0.00"
        exchange_rate?.font = .systemFont(ofSize: 60)
        exchange_rate?.textAlignment = .right
        exchange_rate?.textColor = .white
        view1?.addSubview(exchange_rate!)

        self.view.addSubview(view1!)
        
        
        view2 = UIView.init(frame: CGRect.init(x: 0, y: 170, width: screen.width, height: 300))
        view2?.backgroundColor = UIColor.white
        
        self.view.addSubview(view2!)
        
    }
    @objc func tapGestureRecognizer(sender:UITapGestureRecognizer) {
        print("点击了国旗")
        let currddencycellcontroller = CurrddencyCellController()
        currddencycellcontroller.delegate = self
        self.present(currddencycellcontroller, animated: true, completion: nil)
    }
    func passOnInformation(VC: CurrddencyCellController, value: String) {
        //接收数据
//        self.moneyImv = value
        
    }
    @objc func back(_ sender: AnyObject){
        dismiss(animated: true, completion: nil)
        
    }

}
