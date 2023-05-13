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
    var userDefaults = UserDefaults.standard
    
    init(navigationController : UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        if userDefaults.bool(forKey: Defaults.onboardingShown) {
            print("AppCoordinator Start")
            // The first time this coordinator started, is to launch login page.
            showMain()
        } else {
            showMain()
            print("Onboarding not shown")
        }
        
    }
    
    func showOnboarding() {
        
    }
    
    func showMain() {
        
        let mainCoordinator = MainCoordinator.init(navigationController: navigationController)
        // Remove all children, because this is a top level coordinator.
        children.removeAll()
        
        mainCoordinator.parentCoordinator = self
        children.append(mainCoordinator)
        
        mainCoordinator.start()
    }
    
    deinit {
        print("AppCoordinator Deinit")
    }
    
}
