//
//  Rescue.swift
//  demo
//
//  Created by niit_099 on 2019/4/19.
//  Copyright © 2019 com.niit.ios. All rights reserved.
//

import UIKit
class Rescue : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 0.9323816895, green: 0.9372828603, blue: 0.9544377923, alpha: 1)
        //1. 创建NavigationBar
        let navigationBar = UINavigationBar(frame: CGRect(x: 0, y: 30, width: UIScreen.main.bounds.width, height: 44))
        let leftButton = UIBarButtonItem(title: "返回", style: .plain, target: self, action:#selector(back))
        leftButton.tintColor = UIColor.orange
        let navigationItem = UINavigationItem.init(title: "紧急救援")
        navigationItem.leftBarButtonItem = leftButton
        navigationBar.items = [navigationItem]
        self.view.addSubview(navigationBar)
        
        let view = UIView(frame: CGRect(x: 15 , y: navigationBar.frame.origin.y + navigationBar.frame.height + 10, width: self.view.frame.width - 25, height: self.view.frame.height/2 + 2))
        view.backgroundColor = .white
        self.view.addSubview(view)
        //背景图片
        let img1 = UIImageView(frame:CGRect(x: 5, y: 5, width: view.frame.width - 10, height: view.frame.height/2))
        img1.image = UIImage.init(named: "FindPlaceHolderImg_375x234_@2x")
        view.addSubview(img1)
        //定位图标
        let local = UIButton(frame: CGRect(x: (img1.frame.width - 100)/2, y: 0, width: 100, height: 50))
        local.setImage(UIImage.init(named: "Strategy_Icon1_26x26_@2x"), for: .normal)
//        local.image = UIImage.init(named: "Strategy_Icon1_26x26_@2x")
        local.setTitle("中国", for: .normal)
        local.setTitleColor(.white, for: .normal)
        img1.addSubview(local)
        
        //红线
        let line = UIView(frame: CGRect(x:0, y: img1.frame.origin.y + img1.frame.height + 5, width: view.frame.width, height: 3))
        line.backgroundColor = .red
        view.addSubview(line)
        
        //警察局电话
        let policePhoneView = UIButton(frame: CGRect(x: 0, y: line.frame.origin.y + line.frame.height , width: view.frame.width, height: (img1.frame.height - 10)/3 ))
        view.addSubview(policePhoneView)
        
        let policeLab  = UILabel(frame: CGRect(x: 10, y: 5, width: 100, height: 30))
        policeLab.text = "警察局电话"
        policeLab.font = UIFont.systemFont(ofSize: 16)
        policePhoneView.addSubview(policeLab)
        
        let polPhoneLab = UILabel(frame: CGRect(x: 10, y: policeLab.frame.origin.y + policeLab.frame.height , width: 100, height: 20))
        polPhoneLab.text = "警察局电话: 110"
        polPhoneLab.textColor = #colorLiteral(red: 0.6509242654, green: 0.6510176659, blue: 0.6508947611, alpha: 1)
        polPhoneLab.font = UIFont.systemFont(ofSize: 12)
        policePhoneView.addSubview(polPhoneLab)
        
        //电话图片
        let policeImg = UIImageView(frame: CGRect(x: policePhoneView.frame.width  + policePhoneView.frame.origin.x - 50  , y: policeLab.frame.origin.y + 10, width: 35, height: 35))
        policeImg.image = UIImage.init(named: "jy_call_29x29_@2x")
        policePhoneView.addSubview(policeImg)
    
        //分割线
        let line1  = UIView(frame: CGRect(x: 10, y:policePhoneView.frame.origin.y + policePhoneView.frame.height , width: view.frame.width, height: 1))
        line1.backgroundColor = #colorLiteral(red: 0.928348124, green: 0.9335993528, blue: 0.9289798141, alpha: 1)
        view.addSubview(line1)
        
        //救护车电话
        let ambulanceView = UIButton(frame: CGRect(x: 0, y: line1.frame.origin.y + line1.frame.height, width: view.frame.width, height: (img1.frame.height - 10)/3 ))
        view.addSubview(ambulanceView)
        
        let ambulanceLab  = UILabel(frame: CGRect(x: 10, y: 5, width: 100, height: 30))
        ambulanceLab.text = "救护车电话"
        ambulanceLab.font = UIFont.systemFont(ofSize: 16)
        ambulanceView.addSubview(ambulanceLab)
        
        let ambulancePhoneLab = UILabel(frame: CGRect(x: 10, y: ambulanceLab.frame.origin.y + ambulanceLab.frame.height , width: 100, height: 20))
        ambulancePhoneLab.text = "救护车电话: 120"
        ambulancePhoneLab.font = UIFont.systemFont(ofSize: 12)
        ambulancePhoneLab.textColor = #colorLiteral(red: 0.6509242654, green: 0.6510176659, blue: 0.6508947611, alpha: 1)
        ambulanceView.addSubview(ambulancePhoneLab)
        
        //电话图片
        let ambulanceImg = UIImageView(frame: CGRect(x: ambulanceView.frame.width  + ambulanceView.frame.origin.x - 50  , y: ambulanceLab.frame.origin.y + 10, width: 35, height: 35))
        ambulanceImg.image = UIImage.init(named: "jy_call_29x29_@2x")
        ambulanceView.addSubview(ambulanceImg)
        
        //分割线
        let line2  = UIView(frame: CGRect(x: 10, y:ambulanceView.frame.origin.y + ambulanceView.frame.height , width: view.frame.width, height: 1))
        line2.backgroundColor = #colorLiteral(red: 0.928348124, green: 0.9335993528, blue: 0.9289798141, alpha: 1)
        view.addSubview(line2)
        
        //救护车电话
        let FAView = UIButton(frame: CGRect(x: 0, y: line2.frame.origin.y + line2.frame.height, width: view.frame.width, height: (img1.frame.height - 10)/3 ))
        view.addSubview(FAView)
        
        let FALab  = UILabel(frame: CGRect(x: 10, y: 5, width: 100, height: 30))
        FALab.text = "火警电话"
        FALab.font = UIFont.systemFont(ofSize: 16)
        FAView.addSubview(FALab)
        
        let FAPhoneLab = UILabel(frame: CGRect(x: 10, y: FALab.frame.origin.y + FALab.frame.height , width: 100, height: 20))
        FAPhoneLab.text = "火警电话: 119"
        FAPhoneLab.font = UIFont.systemFont(ofSize: 12)
        FAPhoneLab.textColor = #colorLiteral(red: 0.6509242654, green: 0.6510176659, blue: 0.6508947611, alpha: 1)
        FAView.addSubview(FAPhoneLab)
        
        //电话图片
        let FAImg = UIImageView(frame: CGRect(x: FAView.frame.width  + FAView.frame.origin.x - 50  , y: FALab.frame.origin.y + 10, width: 35, height: 35))
        FAImg.image = UIImage.init(named: "jy_call_29x29_@2x")
        FAView.addSubview(FAImg)
      
        
    }
    @objc func back(){
        self.dismiss(animated: true, completion: nil)
    }
}

