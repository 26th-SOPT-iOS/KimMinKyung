//
//  ViewController.swift
//  IOS_SecondWeek_Seminar_Assignment01
//
//  Created by 민굥 on 2020/05/01.
//  Copyright © 2020 mink. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailStr: UITextField!
    @IBOutlet weak var passStr: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
   
    emailStr.layer.cornerRadius = 20
    passStr.layer.cornerRadius = 20
    emailStr.text = "이메일";
    passStr.text = "비밀번호";

    }

    @IBAction func Signin(_ sender: Any) {
    }
}
    


