//
//  UIView+Ext.swift
//  SpacePhotosApp
//
//  Created by Furkan Sarı on 3.02.2023.
//

import UIKit

extension UIView {
    func pinToEdges(view:UIView) {
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
            
        ])
    }
}
