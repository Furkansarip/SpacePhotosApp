//
//  UICollectionView+Ext.swift
//  SpacePhotosApp
//
//  Created by Furkan Sarı on 3.02.2023.
//

import UIKit

extension UICollectionView {
    func reloadOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
}
