//
//  WeatherCell.swift
//  iOS_3rdWeek_Seminar_Exercise1
//
//  Created by 민굥 on 2020/05/09.
//  Copyright © 2020 mink. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {
    static let identifier: String = "WeatherCell"
    @IBOutlet weak var weatherImg: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func setDateInformation(weatherImgName: String, date: String, subtitle: String) {
        weatherImg.image = UIImage(named: weatherImgName)
        dateLabel.text = date
        subTitleLabel.text = subtitle
}
}
