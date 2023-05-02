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
        print("Start")
    }

}
