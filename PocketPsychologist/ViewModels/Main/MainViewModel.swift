//
//  MainViewModel.swift
//  PocketPsychologist
//
//  Created by mozeX on 28.04.2023.
//

import UIKit

protocol MainViewModelNavigation: AnyObject {
    func showMenu()
    func showMusicPlayer()
    func showSelectedCategory()
}

class MainViewModel {
    
    weak var navigation : MainViewModelNavigation!
    
    init(navigation: MainViewModelNavigation) {
        self.navigation = navigation
    }
    
    func showMenu() {
        navigation.showMenu()
    }
    
    func showMusicPlayer() {
        navigation.showMusicPlayer()
    }
    
    func showSelectedCategory() {
        navigation.showSelectedCategory()
    }
}


