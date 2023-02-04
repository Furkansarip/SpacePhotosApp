//
//  CuriostyVC.swift
//  SpacePhotosApp
//
//  Created by Furkan Sarı on 3.02.2023.
//

import UIKit

protocol CuriosityVCProtocol : AnyObject {
    func configureVC()
    func configureCollectionView()
    func reloadCollectionView()
}

class CuriosityVC: UIViewController {
    var viewModel = CuriosityViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        viewModel.viewDidLoad()
        viewModel.getCuriosityRover(roverName: .curiosity)
        
    }

}

extension CuriosityVC : CuriosityVCProtocol {
    func configureVC() {
        view.backgroundColor = .systemBackground
    }
    
    func configureCollectionView() {
        print("break")
    }
    
    func reloadCollectionView() {
        print("break")
    }
    
    
}
