//
//  CategoryCoordinator.swift
//  PocketPsychologist
//
//  Created by mozeX on 03.05.2023.
//

import Foundation
import UIKit

class CategoryCoordinator: Coordinator {
    
    weak var parentCoordinator: Coordinator?
    
    var children: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    func start() {
        print("CategoryCoordinator Start")
        
        let categoryVC = CategoryViewController()
        categoryVC.viewModel = CategoryViewModel(navigation: self)
        navigationController.pushViewController(categoryVC, animated: true)
    }
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
    deinit {
        print("Deinit home coordinator")
    }
    
}

extension CategoryCoordinator: CategoryViewModelNavigation {
    
    func showDetails() {
        print("Details")
    }
    
}
