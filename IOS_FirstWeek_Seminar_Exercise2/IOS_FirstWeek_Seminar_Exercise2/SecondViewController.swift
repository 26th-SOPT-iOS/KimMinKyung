//
//  SecondViewController.swift
//  IOS_FirstWeek_Seminar_Exercise2
//
//  Created by 민굥 on 2020/04/18.
//  Copyright © 2020 mink. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setLabels()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var sliderLabel: UILabel!
    
    @IBAction func Back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    var nameStr : String?
    var emailStr : String?
    var sampleSwitch : Bool?
    var sampleSlider : Float?
    
    private func setLabels() {
        guard let name = self.nameStr else {return}
        guard let email = self.emailStr else {return}
        guard let isOnOff = self.sampleSwitch else {return}
        guard let frequency = self.sampleSlider else {return}
        
        nameLabel.text = name
        emailLabel.text = email
        switchLabel.text = isOnOff ? "On" : "Off"
        sliderLabel.text = "\(frequency)"
        
        
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
