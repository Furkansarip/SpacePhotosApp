//
//  UIHelper.swift
//  SpacePhotosApp
//
//  Created by Furkan Sarı on 4.02.2023.
//

import UIKit

enum UIHelper {
    static func collectionViewFlowLayout() -> UICollectionViewFlowLayout {
        let layout = UICollectionViewFlowLayout()
        let itemWidth = CGFloat.itemWidth
        let itemHeigt = CGFloat.itemHeight
        layout.scrollDirection = .vertical
        
        
        layout.itemSize = CGSize(width: itemWidth, height: itemHeigt)
        layout.minimumLineSpacing = 10
        return layout
        
    }
}
