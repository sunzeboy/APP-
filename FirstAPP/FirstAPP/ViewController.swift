//
//  ViewController.swift
//  FirstAPP
//
//  Created by sunze on 2017/1/5.
//  Copyright © 2017年 sunzeboy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func jumpAct(_ sender: UIButton) {
        let paramStr = "SecondAPP://username=123&age=123&address=fdsaf"
        let url = URL(string: paramStr)
        if UIApplication.shared.canOpenURL(url!) {
            UIApplication.shared.open(url!, options: [:], completionHandler: nil)
        }else{
            let alert = UIAlertController(title: "提示", message: "未安装您要跳转的APP", preferredStyle: .alert)
            show(alert, sender: nil)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    }

    func F() {
        //F  function
    }

}

