//
//  ViewController.swift
//  iOS_5thSeminar_Coopang
//
//  Created by 민굥 on 2020/05/26.
//  Copyright © 2020 mink. All rights reserved.
//

import UIKit

class ViewController: UIViewController, {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

    }
    
  
    
    @IBOutlet weak var foodCollection: UICollectionView!
    
    private var foodList: [Food] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setFoodList()
        foodCollection.delegate = self
        foodCollection.dataSource = self
    }
    private func setFoodList() {
        let food1 = Food(foodName: "한식", coverName: "food_koreanfood")
        let food2 = Food(foodName: "치킨", coverName: "food_chicken")
        let food3 = Food(foodName: "분식", coverName: "food_ricecake")
        let food4 = Food(foodName: "족발/보쌈", coverName: "food_meat")
        let food5 = Food(foodName: "찜/탕", coverName: "food_soup")
        let food6 = Food(foodName: "구이", coverName: "food_roast")
        let food7 = Food(foodName: "피자/양식", coverName: "food_pizza")
        let food8 = Food(foodName: "중식", coverName: "food_chinese")
        let food9 = Food(foodName: "일식/해물/돈까스", coverName: "food_japanese")
        let food10 = Food(foodName: "커피/차", coverName: "food_coffee")
        let food11 = Food(foodName: "디저트", coverName: "food_dessert")
        let food12 = Food(foodName: "간식", coverName: "food_snack")
        let food13 = Food(foodName: "아시안", coverName: "food_asian")
        let food14 = Food(foodName: "샌드위치", coverName: "food_sandwich")
        let food15 = Food(foodName: "샐러드", coverName: "food_salad")
        let food16 = Food(foodName: "패스트푸드", coverName: "food_fastfood")
        let food17 = Food(foodName: "멕시칸", coverName: "food_mexican")
        let food18 = Food(foodName: "도시락,", coverName: "food_box")
        let food19 = Food(foodName: "죽", coverName: "food_soupsoup")
        let food20 = Food(foodName: "프랜차이즈", coverName: "food_franchize")
    foodList = [food1, food2, food3, food4, food5, food6, food7, food8, food9, food10, food11, food12, food13, food14, food15, food16, food17, food18, food19, food20]
    
        
    extension ViewController: UICollectionViewDataSource {
    func foodcollection(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return foodList.count }
    
    func foodcollection(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    guard let FoodCell = collectionView.dequeueReusableCell(withReuseIdentifier: FoodCell.identifier, for: indexPath) as? FoodCell else { return UICollectionViewCell() }
    }
        
    FoodCell.set(foodList[indexPath.row])
    return FoodCell }
    
    extension ViewController:  UICollectionViewDelegateFlowLayout {
    func foodCollection(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt
    indexPath: IndexPath) -> CGSize {
    return CGSize(width: (collectionView.frame.width-40) / 2, height: collectionView.frame.height / 4)
    }
    func foodCollection(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
    return UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10) }
    func foodCollection(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
    return 20 }
    func foodCollection(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
    return 20 }
    }
}

}
