//
//  SpiritVC.swift
//  SpacePhotosApp
//
//  Created by Furkan Sarı on 3.02.2023.
//

import UIKit

protocol SpiritVCProtocol : AnyObject {
    func configureVC()
    func configureCollectionView()
    func reloadCollectionView()
}

class SpiritVC: UIViewController {
    var viewModel = SpiritViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        viewModel.viewDidLoad()
        viewModel.getSpiritRover(roverName: .spirit)
    }

}

extension SpiritVC : SpiritVCProtocol {
    func configureVC() {
        view.backgroundColor = .systemBackground
    }
    
    func configureCollectionView() {
        print("break")
    }
    
    func reloadCollectionView() {
        print("reload")
    }
    
    
}
