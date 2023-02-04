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
    var collectionView : UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(UIScreen.main.bounds.height)
        print(UIScreen.main.bounds.width)
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
        
        collectionView = UICollectionView(frame: .zero, collectionViewLayout: UIHelper.collectionViewFlowLayout())
        view.addSubview(collectionView)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.register(CuriosityCell.self, forCellWithReuseIdentifier: CuriosityCell.reuseID)
        
        
        collectionView.pinToEdges(view: view)
    }
    
    func reloadCollectionView() {
        collectionView.reloadOnMainThread()
    }
    
    
}

extension CuriosityVC : UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.curiosityRovers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CuriosityCell.reuseID, for: indexPath) as? CuriosityCell else { return UICollectionViewCell() }
        cell.setCell(photo: viewModel.curiosityRovers[indexPath.item])
        return cell
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let offSetY = scrollView.contentOffset.y
        let contentHeight = scrollView.contentSize.height
        let height = scrollView.frame.size.height
        
        if offSetY >= contentHeight - (2*height) {
            viewModel.getCuriosityRover(roverName: .curiosity)
        }
    }
    
  
    
    
}
