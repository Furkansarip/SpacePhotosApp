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
        guard let url = URL(string: spaceObject.imgSrc ?? "") else { return }
        dataTask = NetworkManager.shared.download(url: url) { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let image):
                DispatchQueue.main.async {
                    self.image = UIImage(data: image)
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
        dataTask?.resume()
    }
    
    func cancelDownload() {
        dataTask?.cancel()
        dataTask = nil
    }

}
