//
//  AppDelegate.swift
//  POC-SDUI
//
//  Created by Pedro Filho on 25/09/20.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        self.window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = Factory.makeController()
        window?.makeKeyAndVisible()
        return true
    }
}

