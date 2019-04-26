//
//  ViewController.swift
//  TravelApp
//
//  Created by 郑学习 on 2019/4/1.
//  Copyright © 2019年 niit.edu. All rights reserved.
//

import UIKit

class ToolBoxPage: UIViewController ,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout{
    
    var myCollectionView :UICollectionView!
    var cell:MyCollectionViewCell!
    var imageViewbg :UIImageView?
    var imageViewmain :UIImageView?
    
    var dataSource = [[String:String]()]
    
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    let cid = "cid"
    override func viewDidLoad() {
        
        self.navigationController?.navigationBar.isHidden = true
        
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        //imageview
        imageViewbg = UIImageView(image: UIImage(named: "main_page_top_day_bg"))
        imageViewbg!.frame = CGRect(x: 0, y: 0, width:width, height:height/3 )
        self.view.addSubview(imageViewbg!)
        
        imageViewmain = UIImageView(image: UIImage(named: "main_page_top_set"))
        imageViewmain!.frame = CGRect(x: 0, y: 60, width:width, height:height/3 )
        imageViewmain?.contentMode = UIImageView.ContentMode.scaleAspectFit
        imageViewmain?.isUserInteractionEnabled = true
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action:#selector(ToolBoxPage.tapGestureRecognizer(sender:)))
        
        imageViewmain?.addGestureRecognizer(tapGestureRecognizer)
        
        self.view.addSubview(imageViewmain!)
  
        
        let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        self.myCollectionView = UICollectionView(frame: CGRect.init(x: 0, y: height/3, width: width, height: height-height/3-84), collectionViewLayout: layout)
        layout.itemSize = CGSize(width: (width-3)/3, height: width/3)
        //设置cell与cell之间的列距
        layout.minimumInteritemSpacing = 1;
        //设置cell与cell之间的行距
        layout.minimumLineSpacing = 1;
        
        
        
        self.myCollectionView.register(MyCollectionViewCell.self, forCellWithReuseIdentifier: cid)
        //不显示滚动条
        //myCollectionView.showsHorizontalScrollIndicator = false;
        //弹簧效果设置
        myCollectionView.backgroundColor = #colorLiteral(red: 0.9763886333, green: 0.9765250087, blue: 0.9763454795, alpha: 1)
        myCollectionView.bounces = false;
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        self.view.addSubview(myCollectionView)
        
        dataSource = [
            ["imgv":"h_icon1_normal_48x48_","title":"行程天气"],
            ["imgv":"h_icon_trans_normal_48x48_","title":"实时翻译"],
            ["imgv":"h_icon11_normal_48x48_","title":"国内景点"],
            ["imgv":"h_icon3_normal_48x48_","title":"记账本"],
            ["imgv":"h_exchange_normal_48x48_","title":"汇率换算"],
            ["imgv":"h_icon12_normal_48x48_","title":"旅游保险"],
            ["imgv":"h_icon13_normal_48x48_","title":"旅行资讯"],
            ["imgv":"h_icon6_normal_48x48_","title":"紧急救援"],
            ["imgv":"h_station_normal_48x48_","title":"出国攻略"]
        ]
        
    }
    @objc func tapGestureRecognizer(sender:UITapGestureRecognizer) {
        print("点击了图片")
        let setstroke = SetStroke()
        self.present(setstroke, animated: true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        cell = collectionView.dequeueReusableCell(withReuseIdentifier: cid, for: indexPath) as! MyCollectionViewCell
        
        let dict:Dictionary = dataSource[indexPath.row]
        cell?.myImageView?.image = UIImage(named: dict["imgv"]!)
        cell?.myLable?.text = dict["title"]
        
        cell.backgroundColor = UIColor.white
        return cell
    }
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        print("index is \(indexPath.row)");
        let index = indexPath.row
        switch index {
        case 0 :
            let firstWeather = FirstWeather()
            self.present(firstWeather, animated: true, completion: nil)
            break
            
        case 1 :
            let translate = Translate()
            self.present(translate, animated: true, completion: nil)
            break
        case 2 :
            let setspots = SetSpots()
            self.present(setspots, animated: true, completion: nil)
            break
            
        case 4 :
            let currencyconverter = CurrencyConverter()
        self.present(currencyconverter, animated: true, completion: nil)
            break
        case 5 :
            let travelInsurance = TravelInsurance()
            self.present(travelInsurance, animated: true, completion: nil)
            break
        case 6 :
            let travelInformation = TravelInformation()
            self.present(travelInformation, animated: true, completion: nil)
            break
        case 7 :
            let rescue = Rescue()
            self.present(rescue, animated: true, completion: nil)
            break
        default: break
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
    }
    
}







