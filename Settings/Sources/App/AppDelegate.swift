//
//  AppDelegate.swift
//  Settings
//
//  Created by Kirill on 12.10.2021.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let basePage = SettingsViewController()
        let settingsNavigationController = UINavigationController()
        settingsNavigationController.viewControllers = [basePage]
        settingsNavigationController.navigationBar.prefersLargeTitles = true
        
        window?.rootViewController = settingsNavigationController
        window?.makeKeyAndVisible()
        
        return true
    }
}

