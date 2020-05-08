//
//  SecondViewController.swift
//  IOS_SecondWeek_Seminar_Assignment01
//
//  Created by 민굥 on 2020/05/08.
//  Copyright © 2020 mink. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var nameStr: UITextField!
    @IBOutlet weak var emailStr: UITextField!
    @IBOutlet weak var passStr: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameStr.layer.cornerRadius = 20
        emailStr.layer.cornerRadius = 20
        passStr.layer.cornerRadius = 20
        nameStr.text = "이름";
        emailStr.text = "이메일";
        passStr.text = "비밀번호";
        // Do any additional setup after loading the view.
    }
    
    @IBAction func SignOK(_ sender: Any) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
