//
//  ViewController.swift
//  TravelApp
//
//  Created by 郑学习 on 2019/4/1.
//  Copyright © 2019年 niit.edu. All rights reserved.
//

import UIKit

class TToolBoxPage: UIViewController{
    var imageView :UIImageView?
    
    let ScreenHeight = UIScreen.main.bounds.size.height
    let ScreenWidth = UIScreen.main.bounds.size.width
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        //imageview
        imageView = UIImageView(image: UIImage(named: "image1"))
        imageView!.frame = CGRect(x: 0, y: 0, width:ScreenWidth, height:ScreenHeight/2 )
        self.view.addSubview(imageView!)

    }

    }




