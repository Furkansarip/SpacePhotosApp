//
//  CuriosityViewModel.swift
//  SpacePhotosApp
//
//  Created by Furkan Sarı on 4.02.2023.
//

import Foundation

protocol CuriosityViewModelProtocol {
    var delegate : CuriosityVCProtocol? { get set }
    func viewDidLoad()
    func getCuriosityRover(roverName : RoverName)
}

class CuriosityViewModel {
    weak var delegate : CuriosityVCProtocol?
    var service = PhotoService()
    var curiosityRovers = [SpacePhotos]()
    private var page = 1
    
}

extension CuriosityViewModel : CuriosityViewModelProtocol {
    func viewDidLoad() {
        self.delegate?.configureVC()
        self.delegate?.configureCollectionView()
    }
    
    func getCuriosityRover(roverName: RoverName) {
        service.getPhotos(roverName: .curiosity, page: page) { [weak self] curiosityRover in
            guard let self = self else { return }
            guard let curiosityRover = curiosityRover else { return }
            self.curiosityRovers.append(contentsOf: curiosityRover)
            self.page += 1
            self.delegate?.reloadCollectionView()
        }
    }
    
    
}
