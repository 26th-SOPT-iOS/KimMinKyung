//
//  Food.swift
//  iOS_5thSeminar_Coopang
//
//  Created by 민굥 on 2020/05/26.
//  Copyright © 2020 mink. All rights reserved.
//

import UIKit


struct Food {
    var foodImg: UIImage?; var foodName: String;
    init(foodName: String, coverName: String) {
        self.foodImg = UIImage(named: coverName);
        self.foodName = foodName
} }

    

