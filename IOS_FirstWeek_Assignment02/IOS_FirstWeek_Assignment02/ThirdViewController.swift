//
//  ThirdViewController.swift
//  IOS_FirstWeek_Assignment02
//
//  Created by 민굥 on 2020/04/24.
//  Copyright © 2020 mink. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setLabels()

        // Do any additional setup after loading the view.
    }
    
    
    @IBOutlet weak var nameLabel: UILabel!

    @IBOutlet weak var passwordLabel: UILabel!
    
    @IBAction func DismissView(_ sender: Any) {self.dismiss(animated: true, completion: nil)
    }
    var nameStr: String?
    var passwordStr: String?
       
    private func setLabels() {
              guard let name = self.nameStr else { return }
               guard let password = self.passwordStr else { return }
               
               nameLabel.text = name
               passwordLabel.text = password
           }

 
    

}
