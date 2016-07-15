//
//  MinorViewController.swift
//  UIAlertViewTest
//
//  Created by IMACYF0003 on 16/7/15.
//  Copyright © 2016年 IMACYF0003. All rights reserved.
//

import UIKit

// 创建闭包类型
typealias Account = (phone: String?, password: String?) -> Void

public let ScreenWidth = UIScreen.mainScreen().bounds.size.width

public let ScreenHeight = UIScreen.mainScreen().bounds.size.height

public let NavigationHeighe = 64

class MinorViewController: UIViewController {
    
    private var account: Account?
    
    var phoneField: UITextField!
    var passwordField: UITextField!
    var loginBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()
        
        phoneField = UITextField()
        phoneField.frame = CGRectMake(0, 64, ScreenWidth, 30)
        phoneField.placeholder = "账号"
        view.addSubview(phoneField)
        
        passwordField = UITextField()
        passwordField.frame = CGRectMake(0, CGRectGetMaxY(phoneField.frame) + 10, ScreenWidth, 30)
        passwordField.placeholder = "密码"
        view.addSubview(passwordField)
        
        loginBtn = UIButton(type: .System)
        loginBtn.frame = CGRectMake(0, CGRectGetMaxY(passwordField.frame) + 10, ScreenWidth, 30)
        loginBtn.setTitle("登录", forState: .Normal)
        loginBtn.setTitleColor(UIColor.grayColor(), forState: .Normal)
        loginBtn.addTarget(self, action: #selector(MinorViewController.login(_:)), forControlEvents: .TouchUpInside)
        view.addSubview(loginBtn)
        
    }
    
    internal func setTitleAndGetAccount(title: String, account: Account) {
        navigationItem.title = title
        self.account = account
    }
    
    
    func login(sender: AnyObject) {
        let phone = phoneField.text
        let password = passwordField.text
        
        if phone!.isEmpty {
            return
        }
        
        if password!.isEmpty {
            return
        }
        
        if let nameAndPassword = account {
            nameAndPassword(phone: phone, password: password)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
