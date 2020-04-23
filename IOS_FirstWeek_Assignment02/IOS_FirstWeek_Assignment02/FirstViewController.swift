//
//  FirstViewController.swift
//  IOS_FirstWeek_Assignment02
//
//  Created by 민굥 on 2020/04/24.
//  Copyright © 2020 mink. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var nameStr: UITextField!
    @IBOutlet weak var passwordStr: UITextField!
   
    @IBAction func Next(_ sender: Any) {
    }
    @IBAction func transferData(_ sender: Any) {
        guard let receiveViewController = self.storyboard?.instantiateViewController(identifier: "thirdViewController") as? ThirdViewController else {return}
        
        receiveViewController.nameStr = nameStr.text
        receiveViewController.passwordStr = passwordStr.text
       
        self.present(receiveViewController, animated: true, completion: nil)
    }


}
