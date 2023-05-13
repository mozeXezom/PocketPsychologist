//
//  MenuCoordinator.swift
//  PocketPsychologist
//
//  Created by mozeX on 03.05.2023.
//

import Foundation
import UIKit

class MenuCoordinator: Coordinator {
    
    var parentCoordinator: Coordinator?
    
    var children: [Coordinator] = []
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    deinit {
        print("Deinit home coordinator")
    }
    
    func start() {
        let menuVC = MenuViewController()
        menuVC.viewModel = MenuViewModel(navigation: self)
        navigationController.pushViewController(menuVC, animated: true)
        print("Start")
    }

}

extension MenuCoordinator: MenuViewModelNavigation {
    
}

extension CATransition {

//New viewController will appear from bottom of screen.
func segueFromBottom() -> CATransition {
    self.duration = 0.375 //set the duration to whatever you'd like.
    self.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
    self.type = CATransitionType.moveIn
    self.subtype = CATransitionSubtype.fromTop
    return self
}
//New viewController will appear from top of screen.
func segueFromTop() -> CATransition {
    self.duration = 0.375 //set the duration to whatever you'd like.
    self.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
    self.type = CATransitionType.moveIn
    self.subtype = CATransitionSubtype.fromBottom
    return self
}
 //New viewController will appear from left side of screen.
func segueFromLeft() -> CATransition {
    self.duration = 0.1 //set the duration to whatever you'd like.
    self.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
    self.type = CATransitionType.push
    self.subtype = CATransitionSubtype.fromLeft
    return self
}
//New viewController will pop from right side of screen.
func popFromRight() -> CATransition {
    self.duration = 0.1 //set the duration to whatever you'd like.
    self.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
    self.type = CATransitionType.reveal
    self.subtype = CATransitionSubtype.fromRight
    return self
}
//New viewController will appear from left side of screen.
func popFromLeft() -> CATransition {
    self.duration = 0.1 //set the duration to whatever you'd like.
    self.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
    self.type = CATransitionType.reveal
    self.subtype = CATransitionSubtype.fromLeft
    return self
   }
}
