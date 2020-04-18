//
//  FirstViewController.swift
//  IOS_FirstWeek_Seminar_Exercise2
//
//  Created by 민굥 on 2020/04/18.
//  Copyright © 2020 mink. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var nameStr: UITextField!
    @IBOutlet weak var emailStr: UITextField!
    @IBOutlet weak var sampleSwitch: UISwitch!
    @IBOutlet weak var sampleSlider: UISlider!
    
    
    @IBAction func Next(_ sender: Any) {
        guard let receiveViewController =
            self.storyboard?.instantiateViewController(identifier: "secondview") as? SecondViewController else {return}
        receiveViewController.nameStr = nameStr.text
        receiveViewController.emailStr = emailStr.text
        receiveViewController.sampleSwitch
            = sampleSwitch.isOn
        receiveViewController.sampleSlider
            = sampleSlider.value
        self.present(receiveViewController, animated: true, completion: nil)
        
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
