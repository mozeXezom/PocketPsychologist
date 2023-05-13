//
//  MenuViewModel.swift
//  PocketPsychologist
//
//  Created by mozeX on 03.05.2023.
//

import UIKit

protocol MenuViewModelNavigation: AnyObject {

}

class MenuViewModel {
    
    weak var navigation : MenuViewModelNavigation!
    
    init(navigation: MenuViewModelNavigation) {
        self.navigation = navigation
    }
    
}
