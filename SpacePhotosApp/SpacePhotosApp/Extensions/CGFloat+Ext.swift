//
//  CGFloat+Ext.swift
//  SpacePhotosApp
//
//  Created by Furkan Sarı on 4.02.2023.
//

import UIKit

extension CGFloat {
    static let availableWidth = UIScreen.main.bounds.width - (12 * 2) - (10 * 2)
    static let itemWidth = availableWidth / 2
    static let itemHeight = UIScreen.main.bounds.height / 4
}
