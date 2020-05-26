//
//  FoodCell.swift
//  iOS_5thSeminar_Coopang
//
//  Created by 민굥 on 2020/05/26.
//  Copyright © 2020 mink. All rights reserved.
//

import UIKit

class FoodCell: UICollectionViewCell {
    static let identifier: String = "FoodCell"
    @IBOutlet weak var foodImageView: UIImageView!
    @IBOutlet weak var foodLabel: UILabel!
    
    func set(_ foodInformation: Food) {
        foodImageView.image = foodInformation.foodImg
        foodLabel.text = foodInformation.foodName
        
    }
}
