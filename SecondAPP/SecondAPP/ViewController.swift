//
//  ViewController.swift
//  SecondAPP
//
//  Created by sunze on 2017/1/5.
//  Copyright © 2017年 sunzeboy. All rights reserved.
//

import UIKit
//http://www.cocoachina.com/ios/20161026/17855.html
class ViewController: UIViewController {
    
    @IBAction func jumpAct(_ sender: UIButton) {
        let paramStr = "First://username=123&age=123&address=fdsaf"
        let url = URL(string: paramStr)
        if UIApplication.shared.canOpenURL(url!) {
            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        }else{
            let alert = UIAlertController(title: "提示", message: "未安装您要跳转的APP", preferredStyle: .alert)
            let act = UIAlertAction(title: "确认", style: .default, handler: { (action) in
                
            })
            alert.addAction(act)
            show(alert, sender: nil)
        }

    }

    override func viewDidLoad() {
        super.viewDidLoad()
      
        
    }


}

