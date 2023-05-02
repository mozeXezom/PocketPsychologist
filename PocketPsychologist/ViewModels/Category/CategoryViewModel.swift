//
//  CategoryViewModel.swift
//  PocketPsychologist
//
//  Created by mozeX on 03.05.2023.
//

import UIKit

protocol CategoryViewModelNavigation: AnyObject {
    func showDetails()
}

class CategoryViewModel {
    
    weak var navigation : CategoryViewModelNavigation!
    
    init(navigation: CategoryViewModelNavigation) {
        self.navigation = navigation
    }
    
    func showDetails() {
        navigation.showDetails()
    }

}
