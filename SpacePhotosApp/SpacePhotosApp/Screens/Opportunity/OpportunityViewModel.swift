//
//  OpportunityViewModel.swift
//  SpacePhotosApp
//
//  Created by Furkan Sarı on 3.02.2023.
//

import Foundation

protocol OpportunityViewModelProtocol {
    var delegate : OpportunityVCProtocol? { get set }
    func getOpportunityRover(roverName:RoverName)
    func viewDidLoad()
}

final class OpportunityViewModel {
    weak var delegate : OpportunityVCProtocol?
    private var service = PhotoService()
    var photos = [SpacePhotos]()
    private var page = 1
}

extension OpportunityViewModel : OpportunityViewModelProtocol {
    func getOpportunityRover(roverName: RoverName) {
        service.getPhotos(roverName: roverName, page: page) { [weak self] spacePhotos in
            guard let self = self else { return }
            guard let spacePhotos = spacePhotos else { return }
            self.photos.append(contentsOf: spacePhotos)
            self.page += 1
            self.delegate?.reloadCollectionView()
        }
    }
    
    func viewDidLoad() {
        self.delegate?.configreVC()
        self.delegate?.configureCollectionView()
    }
    
    
}
