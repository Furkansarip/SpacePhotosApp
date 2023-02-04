//
//  SpiritViewModel.swift
//  SpacePhotosApp
//
//  Created by Furkan Sarı on 4.02.2023.
//

import Foundation

protocol SpiritViewModelProtocol {
    var delegate : SpiritVCProtocol? { get set }
    func viewDidLoad()
    func getSpiritRover(roverName:RoverName)
}

final class SpiritViewModel {
    var service = PhotoService()
    weak var delegate : SpiritVCProtocol?
    var spiritRovers = [SpacePhotos]()
    private var page = 1
}

extension SpiritViewModel : SpiritViewModelProtocol {
    func viewDidLoad() {
        self.delegate?.configureVC()
        self.delegate?.configureCollectionView()
    }
    
    func getSpiritRover(roverName: RoverName) {
        service.getPhotos(roverName: roverName, page: page) { [weak self] spiritRover in
            guard let self = self else { return }
            guard let spiritRover = spiritRover else { return }
            self.spiritRovers.append(contentsOf: spiritRover)
            self.page += 1
            print(self.page)
            print(spiritRover)
            self.delegate?.reloadCollectionView()
        }
    }
    
    
}
