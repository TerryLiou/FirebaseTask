//
//  ViewController.swift
//  FirebaseTask
//
//  Created by 劉仲軒 on 2017/3/14.
//  Copyright © 2017年 劉仲軒. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginAction(_ sender: Any) {
        LoginManager.shared.login()
    }

}

