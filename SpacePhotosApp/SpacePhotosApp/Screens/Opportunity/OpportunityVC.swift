//
//  OpportunityVC.swift
//  SpacePhotosApp
//
//  Created by Furkan Sarı on 3.02.2023.
//

import UIKit

protocol OpportunityVCProtocol : AnyObject {
    func configreVC()
    func configureCollectionView()
    func reloadCollectionView()
    
}

final class OpportunityVC: UIViewController {
    var viewModel = OpportunityViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        viewModel.viewDidLoad()
        viewModel.getOpportunityRover(roverName: .opportunity)
        
    }

}

extension OpportunityVC : OpportunityVCProtocol {
    func configreVC() {
        view.backgroundColor = .systemBackground
        view.tintColor = .red
    }
    
    func configureCollectionView() {
        print("conf")
    }
    
    func reloadCollectionView() {
        print("reload")
    }
    
    
}
