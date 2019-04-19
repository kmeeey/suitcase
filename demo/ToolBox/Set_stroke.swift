//
//  ViewController.swift
//  placeholder
//
//  Created by niit on 2019/4/1.
//  Copyright © 2019年 chanbaek. All rights reserved.
//

import UIKit

import Foundation

class SetStroke: UIViewController  {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("加载了相关视图时调用");
        
        let lbTitle = UILabel.init(frame: CGRect.init(x: 0, y: 20 + 44, width: self.view.frame.size.width, height: 20));
        self.view.backgroundColor = #colorLiteral(red: 0.9372880459, green: 0.9370675683, blue: 0.9586622119, alpha: 1)
        let navigationBarHeight: CGFloat = 44//默认高度
        let screen = UIScreen.main.bounds
        let navigationBar = UINavigationBar(frame: CGRect(x: 0, y: 30 , width: screen.size.width, height: navigationBarHeight))
        let leftbtn = UIBarButtonItem(title:"返回",style:.plain,target: self,action: #selector(back(_:)))
        let rightbtn = UIBarButtonItem(title:"行程地图",style:.plain,target: self,action: #selector(travelmap(_:)))
        
        leftbtn.tintColor = UIColor.red
        rightbtn.tintColor = UIColor.red
        let navigationItem = UINavigationItem(title:"设置旅程")
        navigationItem.leftBarButtonItem = leftbtn
        navigationItem.rightBarButtonItem = rightbtn
        navigationBar.items = [navigationItem]
        self.view.addSubview(navigationBar)
        
        let lbtle = UILabel.init(frame: CGRect.init(x: 10, y: navigationBarHeight+44, width:self.view.frame.size.width, height:25))
        lbtle.text = "选择出发地"
        lbtle.textColor = UIColor.gray
        lbtle.font = UIFont.systemFont(ofSize: 15)
        lbtle.textAlignment = .left
        self.view.addSubview(lbtle)
        //        let textFid = UITextField.init(frame: CGRect.init(x: (self.view.frame.size.width-100)/2, y: imgview.frame.origin.y + imgview.frame.size.height + 5, width: 200, height: 40));
        //        textFid.placeholder = "出发城市"
        
        //        let imgview = UIImageView.init(frame: CGRect.init(x: (self.view.frame.size.width - 80)/2, y: lbTitle.frame.origin.y + 5 + lbTitle.frame.size.height, width: 80, height: 80))
        //        //        imgview.image = UIImage.init(named: "audi.jpg");
        //        imgview.backgroundColor = UIColor.red;
        //        self.view.addSubview(imgview);
        
        
        //            (self.view.frame.size.width - 200)/2,
        
        let textFiled = UITextField.init(frame: CGRect.init(x: 5, y: navigationBarHeight+44+25, width: 380, height: 35))
        //        textFiled.backgroundColor = UIColor.lightGray;
        //    newTextField.leftView = UIImageView(image: UIImage(named: "location.png"))
        //    newTextField.leftView = UITextFieldViewMode.Always
        textFiled.placeholder = "出发城市";
        //textFiled.clearButtonMode = .whileEditing
        textFiled.font = UIFont.systemFont(ofSize:15)
        textFiled.textColor = UIColor.black;
        textFiled.backgroundColor = .white
        self.view.addSubview(textFiled)
        let image5 = UIImageView(frame: CGRect(x: 0, y:navigationBarHeight+44+25+35, width: 30, height: 30))
        image5.image = UIImage.init(named: "location.png")
        textFiled.leftViewMode = .always
        textFiled.leftView = image5
        
        let line = UILabel.init(frame: CGRect.init(x: 5, y: 60, width:200, height:1))
        line.textColor = UIColor.red
        self.view.addSubview(line)
        
        
        
        
        
        let select = UIButton.init(frame:CGRect.init(x: textFiled.frame.origin.x + 290,y: navigationBarHeight+44+25, width: 57, height: 35 ))
        select.setTitle("请选择", for: .normal)
        select.setTitleColor(UIColor.black, for: .normal)
        self.view.addSubview(select)
        select.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        let img = UIImageView.init(frame:CGRect.init(x:select.frame.origin.x + 60, y:select.frame.origin.y + 13, width: 10, height:10))
        img.image = UIImage.init(named: "choose")
        self.view.addSubview(img)
        
        
        let textFid = UITextField.init(frame: CGRect.init(x: 5, y: navigationBarHeight+44+25+35, width: 380, height: 35));
        //        textFid.backgroundColor = UIColor.lightGray;
        textFid.placeholder = "出发日期";
        //textFid.clearButtonMode = .whileEditing
        textFid.font = UIFont.systemFont(ofSize:15)
        textFid.textColor = UIColor.black;
        textFid.backgroundColor = .white
        self.view.addSubview(textFid)
        let image7 = UIImageView(frame: CGRect(x: 0, y:navigationBarHeight+44+25+35, width: 30, height: 30))
        image7.image = UIImage.init(named: "calendar.png")
        textFid.leftViewMode = .always
        textFid.leftView = image7
        let select3 = UIButton.init(frame:CGRect.init(x: textFid.frame.origin.x + 290,y: navigationBarHeight+44+25+35 , width:62, height: 35 ))
        select3.setTitle("起始时间", for: .normal)
        select3.titleLabel?.font = UIFont.systemFont(ofSize: 13)
        select3.setTitleColor(UIColor.gray, for: .normal)
        self.view.addSubview(select3)
        let img3 = UIImageView.init(frame:CGRect.init(x:select3.frame.origin.x + 60, y:navigationBarHeight+44+25+35+5, width: 10, height:10))
        img3.image = UIImage.init(named: "choose")
        self.view.addSubview(img3)
        
        
        let lbtil = UILabel.init(frame: CGRect.init(x: 10, y: lbTitle.frame.origin.y + 150 + lbTitle.frame.size.height, width:self.view.frame.size.width, height:25))
        lbtil.text = "选择目的地"
        lbtil.textColor = UIColor.gray
        lbtil.font = UIFont.systemFont(ofSize: 15)
        lbtil.textAlignment = .left
        self.view.addSubview(lbtil)
        
        
        let textFied = UITextField.init(frame: CGRect.init(x:5, y:lbTitle.frame.origin.y + 175 + lbTitle.frame.size.height + 10, width: 380, height :35))
        textFied.placeholder = "目的地1"
        //textFied.clearButtonMode = .whileEditing
        textFied.font = UIFont.systemFont(ofSize:15)
        textFied.textColor = UIColor.black
        textFied.backgroundColor = .white
        self.view.addSubview(textFied)
        let select2 = UIButton.init(frame:CGRect.init(x: textFied.frame.origin.x + 290,y: textFied.frame.origin.y , width: 57, height: 35 ))
        select2.setTitle("请选择", for: .normal)
        select2.setTitleColor(UIColor.black, for: .normal)
        self.view.addSubview(select2)
        select2.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        let img2 = UIImageView.init(frame:CGRect.init(x:select2.frame.origin.x + 60, y:textFied.frame.origin.y + 12, width: 10, height:10))
        img2.image = UIImage.init(named: "choose")
        self.view.addSubview(img2)
        
        let image6 = UIImageView(frame: CGRect(x: 7, y:textFied.frame.origin.y + 3, width: 30, height: 30))
        image6.image = UIImage.init(named: "location.png")
        textFied.leftViewMode = .always
        textFied.leftView = image6
        
        
        let textField = UITextField.init(frame: CGRect.init(x: 5, y:lbTitle.frame.origin.y + 200 + lbTitle.frame.size.height + 19,width:380, height:35))
        textField.placeholder = "起始时间"
        //textField.clearButtonMode = .whileEditing
        textField.backgroundColor = .white
        textField.font = UIFont.systemFont(ofSize:15)
        self.view.addSubview(textField)
        let textField2 = UITextField.init(frame: CGRect.init(x:220, y:lbTitle.frame.origin.y + 200 + lbTitle.frame.size.height + 19,width:185, height:35 ))
        textField2.clearButtonMode = UITextField.ViewMode.whileEditing
        textField2.layer.borderColor = UIColor.gray.cgColor
        textField2.font = UIFont.systemFont(ofSize:15)
        self.view.addSubview(textField2)
        let image3 = UIImageView(frame: CGRect(x: 10, y:textField.frame.origin.y + 3, width: 30, height: 30))
        image3.image = UIImage.init(named: "calendar.png")
        textField.leftViewMode = .always
        textField.leftView = image3
        
        let center = UIImageView(frame: CGRect(x: image3.frame.origin.x + 170, y: image3.frame.origin.y, width: 30, height: 30))
        center.image = UIImage.init(named: "plane.png")
        self.view.addSubview(center)
        let text1 = UITextField.init(frame: CGRect.init(x:center.frame.origin.x + 20, y:center.frame.origin.y, width:205 ,height:35))
        text1.placeholder = "结束时间"
        text1.clearButtonMode = .whileEditing
        text1.font = UIFont.systemFont(ofSize:15)
        self.view.addSubview(text1)
        let pic = UIImageView(frame: CGRect(x:center.frame.origin.x + 40, y:center.frame.origin.y, width:30, height:30))
        pic.image = UIImage.init(named:"calendar.png")
        text1.leftViewMode = .always
        text1.leftView = pic
        
        
        
        
        
        
        
        
        
    }
    @objc func back(_ sender: AnyObject){
        
        dismiss(animated: true, completion: nil)
        
    }
    @objc func travelmap(_ sender: AnyObject){
        
        
        
    }
    @objc  private func leftClick(){
        print("leftClick")
    }
}





//        let textView = UITextView.init(frame: CGRect.init(x: (self.view.frame.size.width - 200 ) / 2, y: textFiled.frame.origin.y + textFiled.frame.size.height + 5, width: 250, height: 40));
//        textView.text = "南京";
//        textView.textAlignment = NSTextAlignment.center;
//        textView.backgroundColor = UIColor.gray;
//        self.view.addSubview(textView);





//        let lbTitle = UILabel.init(frame: CGRect.init(x: 5, y: 20 + 44, width: self.view.frame.size.width, height: 20));
//        let lbButton = UILabel.init(frame: CGRect.init(x: 5,y: 20+44, width: self.view.frame.size.width,height:20))
//        lbButton.text = "返回"
//        lbButton.textColor = UIColor.red
//        lbButton.font = UIFont.systemFont(ofSize:20);
//         lbTitle.textAlignment = NSTextAlignment.left;
//        self.view.addSubview(lbButton);
//        lbTitle.text = "设置旅程";
//        lbTitle.textColor = UIColor.gray;
//        lbTitle.font = UIFont.systemFont(ofSize: 20);
//        lbTitle.textAlignment = NSTextAlignment.center;
//        self.view.addSubview(lbTitle);
//        let textFiled = UITextField.init(frame: CGRect.init(x: 5, y: 20 + 44, width: self.view.frame.size.width, height: 40));
//        textFiled.text = "选择出发城市";
//        textFiled.textColor = UIColor.gray;
//        self.view.addSubview(textFiled);
//    }



