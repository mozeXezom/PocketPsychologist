//
//  MainCoordinator.swift
//  PocketPsychologist
//
//  Created by mozeX on 29.04.2023.
//

import Foundation
import UIKit

class MainCoordinator : Coordinator {
    
    weak var parentCoordinator: Coordinator?
    
    var children: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    let storyboard = UIStoryboard.init(name: "Main", bundle: .main)
    
    func start() {
        print("HomeCoordinator Start")
        
        let mainVC = MainViewController()
        mainVC.viewModel = MainViewModel(navigation: self)
        navigationController.pushViewController(mainVC, animated: true)
    }
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
    deinit {
        print("Deinit home coordinator")
    }
    
}

extension MainCoordinator: MainViewModelNavigation {
    
    func showMenu() {
        print("Menu")
    }
    
    func showMusicPlayer() {
        print("Music")
    }
    
    
}

//extension HomeCoordinator : HomeNavigation {
//
//    func logout() {
//        let appC = parentCoordinator as! AppCoordinator
//        appC.goToAuth()
//        appC.childDidFinish(self)
//    }
//
//    func goToBuyProduct() {
////        let vc = storyboard.instantiateViewController(withIdentifier: "ProductListViewController")
////        navigationController.pushViewController(vc, animated: true)
//
//        // Use this code if you want to separate the transaction as a subflow.
//        let transactionCoordinator = TransactionCoordinator(navigationController: navigationController)
//        // Add the parent with self
//        transactionCoordinator.parentCoordinator = self
//        children.append(transactionCoordinator)
//
//        transactionCoordinator.start()
//    }
//
//}

