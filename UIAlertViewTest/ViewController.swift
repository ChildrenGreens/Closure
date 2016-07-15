//
//  ViewController.swift
//  UIAlertViewTest
//
//  Created by IMACYF0003 on 16/7/15.
//  Copyright © 2016年 IMACYF0003. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "首页"
        
    }
    
    @IBAction func skip(sender: AnyObject) {
        let minorVC = MinorViewController()
        minorVC.setTitleAndGetAccount("登录界面") { (phone, password) in
            print("phone:\(phone) password:\(password)")
        }
        navigationController?.pushViewController(minorVC, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

