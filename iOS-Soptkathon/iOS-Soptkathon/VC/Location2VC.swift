//
//  Location2VC.swift
//  iOS-Soptkathon
//
//  Created by Sehwa Ryu on 06/06/2020.
//  Copyright © 2020 Sehwa Ryu. All rights reserved.
//

import UIKit

class Location2VC: UIViewController {
    
    @IBOutlet weak var firstCollectionView: UICollectionView!
    @IBOutlet weak var secondCollectionView: UICollectionView!
    @IBOutlet weak var thirdCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view
        
        firstCollectionView.dataSource = self
        firstCollectionView.delegate = self
        secondCollectionView.dataSource = self
        secondCollectionView.delegate = self
        thirdCollectionView.dataSource = self
        thirdCollectionView.delegate = self
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

extension Location2VC: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        switch collectionView {
        case self.firstCollectionView:
            guard let firstCell = collectionView.dequeueReusableCell(withReuseIdentifier: "firstCell", for: indexPath) as? FirstCategoryCellSE else { return UICollectionViewCell() }
            return firstCell
        case self.secondCollectionView:
            guard let secondCell = collectionView.dequeueReusableCell(withReuseIdentifier: "secondCell", for: indexPath) as? SecondCategoryCellSE else { return UICollectionViewCell() }
            return secondCell
        default:
            guard let thirdCell = collectionView.dequeueReusableCell(withReuseIdentifier: "thirdCell", for: indexPath) as? ThirdCategoryCellSE else { return UICollectionViewCell() }
            return thirdCell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
}
