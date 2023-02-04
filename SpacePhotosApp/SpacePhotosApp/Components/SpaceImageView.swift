//
//  SpaceImageView.swift
//  SpacePhotosApp
//
//  Created by Furkan Sarı on 4.02.2023.
//

import UIKit

class SpaceImageView: UIImageView {

    private var dataTask : URLSessionDataTask?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func downloadImage(spaceObject : SpacePhotos) {
        
    }

}
