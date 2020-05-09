//
//  LastViewController.swift
//  iOS_3rdWeek_Seminar_Exercise1
//
//  Created by 민굥 on 2020/05/09.
//  Copyright © 2020 mink. All rights reserved.
//

import UIKit

class LastViewController: UIViewController {
    @IBOutlet weak var MusicCell: UICollectionView!
    private var musicList: [Music] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setMusicList()
        MusicCell.delegate = self
        MusicCell.dataSource = self
        
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
    extension LastViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return musicList.count }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    
        guard let MusicCell = collectionView.dequeueReusableCell(withReuseIdentifier: MusicCell.identifier, for: indexPath) as? MusicCell else { return UICollectionViewCell() }
    MusicCell.set(musicList[indexPath.row])
    return MusicCell }
}

extension LastViewController: UICollectionViewDelegateFlowLayout {
func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt
indexPath: IndexPath) -> CGSize {
return CGSize(width: (collectionView.frame.width-40) / 2, height: collectionView.frame.height / 4)
}
func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10) }
func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
return 20 }
func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
return 20

}
}
