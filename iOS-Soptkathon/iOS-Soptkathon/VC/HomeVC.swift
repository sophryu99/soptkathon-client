//
//  HomeVC.swift
//  iOS-Soptkathon
//
//  Created by Sehwa Ryu on 06/06/2020.
//  Copyright © 2020 Sehwa Ryu. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var ContentsCollectionView: UICollectionView!
    
    @IBOutlet weak var contentPageControl: UIPageControl!
    
    private var contentList : [ContentSH] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        ContentsCollectionView.delegate = self
        ContentsCollectionView.dataSource = self
        setContentList()
        contentPageControl.pageIndicatorTintColor = .gray
        contentPageControl.currentPageIndicatorTintColor = .white
        

    }
    
    private func setContentList() {
        let sec1 = ContentSH(imageName: "12", titleName: "도쿄의 심장, 오사카", subtitleName: "누군가에겐 늘 똑같은 일상이 다른 누군가에겐 특별한 순간으로 기억됩니다.")
        let sec2 = ContentSH(imageName: "12", titleName: "도쿄의 심장, 오사카", subtitleName: "누군가에겐 늘 똑같은 일상이 다른 누군가에겐 특별한 순간으로 기억됩니다.")
        let sec3 = ContentSH(imageName: "12", titleName: "도쿄의 심장, 오사카", subtitleName: "누군가에겐 늘 똑같은 일상이 다른 누군가에겐 특별한 순간으로 기억됩니다.")
        
        contentList = [sec1, sec2, sec3]
    }


}

extension HomeVC: UICollectionViewDelegate, UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return contentList.count
        }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let contentCell = collectionView.dequeueReusableCell(withReuseIdentifier: ContentsCollectionViewCell.identifier, for: indexPath) as? ContentsCollectionViewCell else { return UICollectionViewCell()}
        contentCell.set(contentList[indexPath.row])
        return contentCell
        }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
        }
    
    //func collectionView
        
    }
