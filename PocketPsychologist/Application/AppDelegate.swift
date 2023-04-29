//
//  AppDelegate.swift
//  PocketPsychologist
//
//  Created by mozeX on 27.04.2023.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var coordinator: AppCoordinator?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow(frame: UIScreen.main.bounds)

        let navigationCon = UINavigationController.init()
        coordinator = AppCoordinator(navigationController: navigationCon)
        coordinator!.start()

        window!.rootViewController = navigationCon
        window!.makeKeyAndVisible()
        
        return true
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
    }
    
    func applicationDidEnterBackground(_ application: UIApplication) {
    }
    
    func applicationWillEnterForeground(_ application: UIApplication) {
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
    }
    
    func applicationWillTerminate(_ application: UIApplication) {
    }

}

