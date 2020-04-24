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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let vc = segue.destination as? ThirdViewController else { return }
        
        vc.nameStr = nameStr.text
        vc.passwordStr = passwordStr.text
        
}
}

