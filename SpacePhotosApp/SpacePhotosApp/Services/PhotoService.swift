//
//  PhotoService.swift
//  SpacePhotosApp
//
//  Created by Furkan Sarı on 3.02.2023.
//

import Foundation

class PhotoService {
    
    func getPhotos(roverName:RoverName,page:Int, completion:@escaping([SpacePhotos]?)->()) {
        guard let url = URL(string: APIURLs.getPhotosURL(roverName: roverName, page: page)) else { return }
        print(url)
        NetworkManager.shared.download(url: url) { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let data) :
                completion(self.handleWithData(data))
            case .failure(let error):
                self.handleWithError(error)
            }
        }
    }
    
    private func handleWithError(_ error:Error) {
        print(error.localizedDescription)
    }
    private func handleWithData(_ data:Data) -> [SpacePhotos]? {
        do {
            let spacePhotos = try JSONDecoder().decode(SpaceModel.self, from: data)
            print(spacePhotos.photos?.count)
            return spacePhotos.photos
        } catch {
            print(error.localizedDescription)
            return nil
        }
        
        
    }
}
