//
//  ViewController.swift
//  iOS_3rdWeek_Seminar_Exercise1
//
//  Created by 민굥 on 2020/05/09.
//  Copyright © 2020 mink. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var pickerStr: UIPickerView!
    @IBOutlet weak var albumImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var singerLabel: UILabel!
    private var musicList: [Music] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
      setMusicList()
        pickerStr.delegate = self
        pickerStr.dataSource = self
    }
    private func setMusicList() {
        let music1 = Music(title: "삐삐", singer: "아이유", coverName: "album_iu")
        let music2 = Music(title: "고백", singer: "양다일", coverName: "album_yangdail")
        let music3 = Music(title: "멋지게 인사하는 법 (Feat. 슬기)", singer: "Zion.T", coverName: "album_ziont")
        let music4 = Music(title: "IDOL", singer: "방탄소년단", coverName: "album_bts")
        let music5 = Music(title: "시간이 들겠지 (Feat. Colde)", singer: "로꼬", coverName: "album_loco")
        let music6 = Music(title: "Way Back Home", singer: "숀(SHAUN)Way Back Home", coverName: "album_shaun")
    musicList = [music1, music2, music3, music4, music5, music6] }

}

extension ViewController: UIPickerViewDataSource {
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return musicList.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
}


extension ViewController: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return musicList[row].musicTitle
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        albumImage.image = musicList[row].albumImg
        titleLabel.text = musicList[row].musicTitle
        singerLabel.text = musicList[row].singer
    }
    

}
