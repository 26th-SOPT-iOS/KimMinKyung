//
//  Music.swift
//  iOS_3rdWeek_Seminar_Exercise1
//
//  Created by 민굥 on 2020/05/09.
//  Copyright © 2020 mink. All rights reserved.
//

import UIKit

// Music 모델
struct Music {
    
    var albumImg: UIImage?
    var musicTitle: String?
    var singer: String?
    
    init(title: String, singer: String, coverName: String) {
        self.albumImg = UIImage(named: coverName)
        self.musicTitle = title
        self.singer = singer
    }
    
}
