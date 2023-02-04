//
//  ViewController.swift
//  SpacePhotosApp
//
//  Created by Furkan Sarı on 3.02.2023.
//

import UIKit

class RoverTabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
    }

    func setUpTabs() {
        let curiosityVC = CuriosityVC()
        let spiritVC = SpiritVC()
        let opportunityVC = OpportunityVC()
        curiosityVC.title = "Curiosty"
        spiritVC.title = "Spirit"
        opportunityVC.title = "Opportunity"
        
        curiosityVC.tabBarItem = UITabBarItem(title: "Curiosty", image: UIImage(systemName: "c.circle.fill"), tag: 1)
        self.tabBar.tintColor = .systemIndigo
        spiritVC.tabBarItem = UITabBarItem(title: "Spirit", image: UIImage(systemName: "s.circle.fill"), tag: 2)
        
        opportunityVC.tabBarItem = UITabBarItem(title: "Opportunity", image: UIImage(systemName: "o.circle.fill"), tag: 3)
        
        let nav1 = UINavigationController(rootViewController: curiosityVC)
        let nav2 = UINavigationController(rootViewController: spiritVC)
        let nav3 = UINavigationController(rootViewController: opportunityVC)
        
        setViewControllers([nav1,nav2,nav3], animated: true)
    }

}

