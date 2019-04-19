//
//  ViewController.swift
//  TravelApp
//
//  Created by 郑学习 on 2019/4/1.
//  Copyright © 2019年 niit.edu. All rights reserved.
//

import UIKit

class TToolBoxPage: UIViewController ,UICollectionViewDataSource,UICollectionViewDelegate{
    
    var myCollectionView :UICollectionView!
    var cell:UICollectionViewCell!
    var imageViewbg :UIImageView?
    var imageViewmain :UIImageView?
    
    
    let ScreenHeight = UIScreen.main.bounds.size.height
    let ScreenWidth = UIScreen.main.bounds.size.width
    let cid = "cid"
    override func viewDidLoad() {
        
        self.navigationController?.navigationBar.isHidden = true
        
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        
        //imageview
        imageViewbg = UIImageView(image: UIImage(named: "main_page_top_day_bg"))
        imageViewbg!.frame = CGRect(x: 0, y: 0, width:ScreenWidth, height:ScreenHeight/2 )
        self.view.addSubview(imageViewbg!)
        
        imageViewmain = UIImageView(image: UIImage(named: "main_page_top_set"))
        imageViewmain!.frame = CGRect(x: 0, y: 0, width:ScreenWidth, height:ScreenHeight/2 )
        imageViewmain?.contentMode = UIImageView.ContentMode.scaleAspectFit
        
        self.view.addSubview(imageViewmain!)
  
        
        let layout:UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        self.myCollectionView = UICollectionView(frame: CGRect.init(x: 0, y: ScreenHeight/2, width: ScreenWidth, height: ScreenHeight-ScreenHeight/2-84), collectionViewLayout: layout)
        layout.itemSize = CGSize(width: (ScreenWidth-30)/3, height: ScreenWidth/3)
        
        self.myCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cid)
        self.myCollectionView.dataSource = self
        self.myCollectionView.delegate = self
        self.view.addSubview(myCollectionView)
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        cell = collectionView.dequeueReusableCell(withReuseIdentifier: cid, for: indexPath)
        
        
        cell.backgroundColor = .red
        cell.layer.borderWidth = 1
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
        case 2 : break
        case 5 :
            let travelInsurance = TravelInsurance()
            self.present(travelInsurance, animated: true, completion: nil)
            break
        case 6 :
            let travelInformation = TravelInformation()
            self.present(travelInformation, animated: true, completion: nil)
            break
        default: break
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
    }
    
}







