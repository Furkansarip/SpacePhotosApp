//
//  CuriosityCell.swift
//  SpacePhotosApp
//
//  Created by Furkan Sarı on 4.02.2023.
//

import UIKit

class CuriosityCell: UICollectionViewCell {
    
    static let reuseID = "CuriosityCell"
    var images : SpaceImageView!
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureCell()
        configureSpaceImage()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureCell() {
            backgroundColor = .systemBackground
           layer.cornerRadius = 16
           clipsToBounds = true
           
       }
       
       override func prepareForReuse() {
           super.prepareForReuse()
           images.image = nil
           images.cancelDownload()
          
       }
       
       func setCell(photo : SpacePhotos) {
           images.downloadImage(spaceObject: photo)
           
       }
    
        
       
       private func configureSpaceImage() {
           images = SpaceImageView(frame: .zero)
           addSubview(images)
           images.pinToEdges(view: self)
           
       }
}
