//
//  Trip.swift
//  demo
//
//  Created by abc on 2019/4/19.
//  Copyright © 2019 com.niit.ios. All rights reserved.
//

import UIKit

class Trip: UIViewController, UITableViewDelegate,UITableViewDataSource {
    
    
    var dataSource = [[String: String]()]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       //获取屏幕
        let screen = UIScreen.main.bounds
        self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        let navigationBarHeight: CGFloat = 44  //默认高度
        
        
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
    
    
    
    }

