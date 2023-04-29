//
//  AppCoordinator.swift
//  PocketPsychologist
//
//  Created by mozeX on 29.04.2023.
//

import Foundation
import UIKit

class AppCoordinator : Coordinator {
    var parentCoordinator: Coordinator?
    
    var children: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        print("AppCoordinator Start")
        // The first time this coordinator started, is to launch login page.
       showMain()
//        goToHome()
    }
    
//    func goToAuth(){
//        // For the first time, the app is going to go to Authentication module
//        let authCoordinator = AuthCoordinator.init(navigationController: navigationController)
//        // Remove all children, because this is a top level coordinator.
//        children.removeAll()
//
//        authCoordinator.parentCoordinator = self
//        children.append(authCoordinator)
//
//        authCoordinator.start()
//    }
    
    func showMain() {
        // Initiate HomeTabBar Coordinator
        let mainCoordinator = MainCoordinator.init(navigationController: navigationController)
        // Remove all children, because this is a top level coordinator.
        children.removeAll()
        
        mainCoordinator.parentCoordinator = self
        
        mainCoordinator.start()
    }
    
    deinit {
        print("AppCoordinator Deinit")
    }
    
    
}
