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
//            UIApplication.shared.open(<#T##url: URL##URL#>, options: <#T##[String : Any]#>, completionHandler: <#T##((Bool) -> Void)?##((Bool) -> Void)?##(Bool) -> Void#>)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

